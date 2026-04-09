#!/bin/bash
# =============================================
# Zivpn UDP Installer - Silent Auto Domain
# Domain diambil dari /etc/xray/domain
# =============================================

# Warna
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RED='\033[0;31m'
GRAY='\033[1;30m'
NC='\033[0m'
BOLD='\033[1m'

# Fungsi run_silent
run_silent() {
    local msg="$1"
    local cmd="$2"
    local log_file="/tmp/zivpn_install.log"
    
    echo -ne "${GRAY}•${NC} $msg... "
    bash -c "$cmd" &>> "$log_file"
    if [ $? -eq 0 ]; then
        echo -e "\r${GREEN}✓${NC} $msg"
    else
        echo -e "\r${RED}✗${NC} $msg (Check $log_file)"
        exit 1
    fi
}

# Cek root
if [ $EUID -ne 0 ]; then
    echo -e "${RED}Error: This script must be run as root${NC}"
    exit 1
fi

clear
echo -e "${BOLD}ZiVPN UDP Installer${NC}"
echo -e "${GRAY}Auto Domain from /etc/xray/domain${NC}\n"

# --- Ambil Domain (wajib ada) ---
if [ ! -f /etc/xray/domain ]; then
    echo -e "${RED}✗ File /etc/xray/domain tidak ditemukan.${NC}"
    echo -e "${YELLOW}Pastikan domain sudah diset sebelum menjalankan script ini.${NC}"
    exit 1
fi

domain=$(cat /etc/xray/domain)
if [ -z "$domain" ]; then
    echo -e "${RED}✗ Isi /etc/xray/domain kosong.${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Domain: $domain${NC}\n"

# Variabel
NIC=$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)
Dir="/etc/zivpn"
MENU_URL="https://raw.githubusercontent.com/EnzoXZodix/ZIKIR/main/zivpn-menu"

# --- Instalasi ---
run_silent "Membuat direktori /etc/zivpn" "mkdir -p $Dir"

if systemctl is-active --quiet zivpn; then
    run_silent "Menghentikan service zivpn lama" "systemctl stop zivpn"
fi

run_silent "Mengunduh binary Zivpn" "wget -q https://github.com/zahidbd2/udp-zivpn/releases/download/udp-zivpn_1.4.9/udp-zivpn-linux-amd64 -O /usr/local/bin/zivpn && chmod +x /usr/local/bin/zivpn"

# Config JSON
cat > "$Dir/config.json" <<-END
{
  "listen": ":5667",
  "cert": "$Dir/zivpn.crt",
  "key": "$Dir/zivpn.key",
  "obfs": "zivpn",
  "auth": {
    "mode": "passwords",
    "config": []
  }
}
END

# Generate SSL dengan CN = domain
run_silent "Membuat SSL certificate untuk $domain" "openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 -subj \"/C=ID/ST=Jawa Barat/L=Bandung/O=AutoVPS/OU=IT/CN=$domain\" -keyout $Dir/zivpn.key -out $Dir/zivpn.crt"

# Systemd service
cat > /etc/systemd/system/zivpn.service <<-END
[Unit]
Description=Zivpn VPN Server
After=network.target

[Service]
Type=simple
User=root
WorkingDirectory=$Dir
ExecStart=/usr/local/bin/zivpn server -c $Dir/config.json
Restart=always
RestartSec=3
Environment=ZIVPN_LOG_LEVEL=info
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW
NoNewPrivileges=true

[Install]
WantedBy=multi-user.target
END

run_silent "Reload systemd" "systemctl daemon-reload"
run_silent "Enable zivpn service" "systemctl enable zivpn"
run_silent "Start zivpn service" "systemctl start zivpn"

# Kernel tuning
run_silent "Optimasi kernel" "sysctl -w net.core.rmem_max=16777216 net.core.wmem_max=16777216 net.ipv4.ip_forward=1"

# Iptables NAT
run_silent "Konfigurasi iptables NAT" "iptables -t nat -A PREROUTING -i $NIC -p udp --dport 6000:19999 -j DNAT --to-destination :5667"

# Menu tambahan (opsional)
if command -v wget &> /dev/null; then
    run_silent "Mengunduh menu tambahan" "wget -q $MENU_URL -O /usr/local/bin/zivpn-menu && chmod +x /usr/local/bin/zivpn-menu"
fi

# File expired.db untuk kompatibilitas
touch "$Dir/expired.db"

# Info akhir
echo ""
echo -e "${BOLD}════════════════════════════════════════${NC}"
echo -e "${GREEN}✅ ZiVPN UDP berhasil dipasang!${NC}"
echo -e "${BOLD}════════════════════════════════════════${NC}"
echo -e "Domain      : ${CYAN}$domain${NC}"
echo -e "Port UDP    : ${CYAN}6000-19999${NC} → ${CYAN}:5667${NC}"
echo -e "Config Dir  : ${CYAN}$Dir${NC}"
echo -e "Service     : ${CYAN}systemctl status zivpn${NC}"
echo -e "Menu        : ${CYAN}zivpn-menu${NC} (jika diunduh)"
echo -e "${BOLD}════════════════════════════════════════${NC}"

