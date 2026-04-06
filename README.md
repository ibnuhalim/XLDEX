# ☘ XLDEX VPN INSTALLER ☘  

## 🖥 SUPPORT OS  
- Debian 10/11 (recommended)  
- Ubuntu 20.04  

---

## ⚡️ INSTALASI  

### ❏ STEP 1  
```bash
apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && apt install curl jq wget screen build-essential -y && reboot
```

---

### ❏ STEP 2  
➽ Pastikan sudah login sebagai **root**
```bash
apt install tmux -y && wget -O main.sh https://raw.githubusercontent.com/ibnuhalim/XLDEX/main/main.sh && chmod +x main.sh && tmux new-session -d -s killer './main.sh' && tmux attach -t killer
```

---

### ❏ STEP 3  
Jika koneksi terputus saat instalasi:
```bash
tmux attach -t killer
```
atau:
```bash
tmux attach-session -t xn
```

---

## ☁️ SETTING CLOUDFLARE  
- SSL/TLS : FULL  
- SSL/TLS Recommender : OFF  
- GRPC : ON  
- WEBSOCKET : ON  
- Always Use HTTPS : OFF  
- Under Attack Mode : OFF  

---

## ⚠️ WARNING  
- Jika status service **OFF**, silahkan restart service  
- Jika masih OFF, lakukan **reboot VPS**

---

# 📊 Service Information  

```
╭════════════════════════════════════════════╮
│ Service SSH / TUN                         │
│ Service SSH UDP                           │
│ Service OpenVPN SSL                       │
│ Service OpenVPN WS-SSL                    │
│ Service OpenVPN UDP                       │
│ Service OpenVPN TCP                       │
│ Service OHP SSH                           │
│ Service OHP Dropbear                      │
│ Service OHP OpenVPN                       │
│ Service WS ePRO                           │
│ Service BadVPN 7100                       │
│ Service BadVPN 7200                       │
│ Service BadVPN 7300                       │
│ Service ZIVPN UDP                         │
│ Service Noobzvpn                          │
│ Service Dropbear                          │
│ Service Haproxy                           │
│ Service Crons                             │
│ Service Nginx Webserver                   │
│ Service Xray Vmess WS TLS                 │
│ Service Xray Vmess WS Non TLS             │
│ Service Xray Vmess gRPC                   │
│ Service Xray Vless WS TLS                 │
│ Service Xray Vless WS Non TLS             │
│ Service Xray Vless gRPC                   │
│ Service Xray Trojan WS                    │
│ Service Xray Trojan Non WS                │
│ Service Xray Trojan gRPC                  │
│ Service Xray Shadowsocks WS               │
│ Service Xray Shadowsocks Non WS           │
│ Service Xray Shadowsocks gRPC             │
│ Service Iptables                          │
│ Service RClocal                           │
│ Service Autoreboot                        │
╰════════════════════════════════════════════╯
```

---

## 📱 Tampilan Panel  

Setelah instalasi berhasil, Anda akan melihat panel seperti ini:

![Panel Monitoring](panel_main.png)

---

## ⚠️ Ketentuan Sistem  

- Sistem membutuhkan **izin IP (IP Permission)**  
- Jika IP belum terdaftar, silahkan lakukan order  

---

## 🛒 ORDER / AKTIVASI  

Klik tombol di bawah untuk melakukan order:

### 🔹 Telegram
[![Order via Telegram](https://img.shields.io/badge/Telegram-Order-blue?logo=telegram)](http://t.me/Nullprx)

### 🔹 WhatsApp
[![Order via WhatsApp](https://img.shields.io/badge/WhatsApp-Order-green?logo=whatsapp)](https://wa.me/6287815991072)

---

## 🚀 NOTE  

- Script akan berjalan otomatis setelah instalasi  
- Pastikan VPS dalam kondisi fresh install  
- Gunakan koneksi stabil selama proses instalasi  

---
