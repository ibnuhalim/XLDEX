# 🚀 XLDEX VPN INSTALLER  

<p align="center">
  <img src="https://img.shields.io/badge/OS-Debian%2010%20%7C%2011-blue?style=for-the-badge">
  <img src="https://img.shields.io/badge/OS-Ubuntu%2020.04-orange?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Stable-success?style=for-the-badge">
</p>

---

## 🖥 SUPPORTED OS  
✔ Debian 10 / 11 *(Recommended)*  
✔ Ubuntu 20.04  

---

## ⚡ QUICK INSTALL  

### 🔹 STEP 1
```bash
apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && apt install curl jq wget screen build-essential -y && reboot
```

---

### 🔹 STEP 2  
📌 Login sebagai **ROOT**
```bash
apt install tmux -y && wget -O main.sh https://raw.githubusercontent.com/ibnuhalim/XLDEX/main/main.sh && chmod +x main.sh && tmux new-session -d -s killer './main.sh' && tmux attach -t killer
```

---

### 🔹 STEP 3  
🔁 Jika koneksi terputus:
```bash
tmux attach -t killer
```
atau:
```bash
tmux attach-session -t xn
```

---

## ☁️ CLOUDFLARE SETTINGS  

| Setting                | Value |
|----------------------|------|
| SSL/TLS              | FULL |
| SSL Recommender      | OFF  |
| gRPC                 | ON   |
| WebSocket            | ON   |
| Always HTTPS         | OFF  |
| Under Attack Mode    | OFF  |

---

## ⚠️ TROUBLESHOOT  

🔸 Service OFF? → Restart Service  
🔸 Masih OFF? → Reboot VPS  

---

# 📊 SERVICE STATUS  

```
╭──────────────────────────────────────────╮
│ 🔐 SSH & VPN CORE                        │
├──────────────────────────────────────────┤
│ SSH / TUN        │ SSH UDP              │
│ Dropbear         │ OpenVPN (TCP/UDP)    │
│ OpenVPN SSL      │ OpenVPN WS-SSL       │
│ OHP SSH          │ OHP Dropbear         │
│ OHP OpenVPN      │ WS ePRO              │
╰──────────────────────────────────────────╯

╭──────────────────────────────────────────╮
│ ⚡ NETWORK & BOOST                       │
├──────────────────────────────────────────┤
│ BadVPN 7100     │ BadVPN 7200           │
│ BadVPN 7300     │ ZIVPN UDP             │
│ NoobzVPN        │ Haproxy               │
│ Nginx           │ Crons                 │
╰──────────────────────────────────────────╯

╭──────────────────────────────────────────╮
│ 🚀 XRAY SERVICES                         │
├──────────────────────────────────────────┤
│ Vmess WS TLS    │ Vmess WS Non TLS      │
│ Vmess gRPC      │ Vless WS TLS          │
│ Vless Non TLS   │ Vless gRPC            │
│ Trojan WS       │ Trojan Non WS         │
│ Trojan gRPC     │ Shadowsocks WS        │
│ Shadowsocks Non │ Shadowsocks gRPC      │
╰──────────────────────────────────────────╯

╭──────────────────────────────────────────╮
│ ⚙️ SYSTEM                                │
├──────────────────────────────────────────┤
│ Iptables        │ RClocal               │
│ Autoreboot      │                       │
╰──────────────────────────────────────────╯
```

---

## 📱 PANEL VIEW  

<p align="center">
  <img src="panel_main.png" width="80%">
</p>

---

## ⚠️ SYSTEM REQUIREMENT  

❗ Wajib menggunakan **IP Permission**  
Jika IP belum terdaftar, silahkan order  

---

## 🛒 ORDER & ACTIVATION  

<p align="center">
  
<a href="http://t.me/Nullprx">
  <img src="https://img.shields.io/badge/ORDER%20TELEGRAM-CLICK%20HERE-blue?style=for-the-badge&logo=telegram">
</a>

<a href="https://wa.me/6287815991072">
  <img src="https://img.shields.io/badge/ORDER%20WHATSAPP-CLICK%20HERE-green?style=for-the-badge&logo=whatsapp">
</a>

</p>

---

## 💡 NOTES  

✔ Script berjalan otomatis setelah install  
✔ Gunakan VPS fresh install  
✔ Gunakan koneksi stabil  

---

<p align="center">
  ✨ Powered by XLDEX Installer ✨
</p>
