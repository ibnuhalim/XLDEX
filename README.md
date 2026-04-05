☘ SUPPORT OS ☘  
  
➽ Debian 10/11 (recommended)   
➽ Ubuntu 20.04   

⚡️ INSTALASI ⚡️     

❏ STEP 1 :    
```
apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && apt install curl jq wget screen build-essential -y && reboot
```

❏ STEP 2 :       
➽ Pastikan anda sudah login sebagai root :    
```
apt install tmux -y && wget -O main.sh https://raw.githubusercontent.com/ibnuhalim/XLDEX/main/main.sh && chmod +x main.sh && tmux new-session -d -s killer './main.sh' && tmux attach -t killer
```

❏ STEP 3 :     
➽ If during the installation connection was lost, login to the vps again and run the command ☞shell
```
tmux attach -t killer
```
OR
```
tmux attach-session -t xn
```

### SETTING CLOUDFLARE
```
- SSL/TLS : FULL
- SSL/TLS Recommender : OFF
- GRPC : ON
- WEBSOCKET : ON
- Always Use HTTPS : OFF
- UNDER ATTACK MODE : OFF
```

### `WARNING !`
```
Jika Mendapatkan Status Service Off
Silahkan Restart Service.
Jika Statsus Service Masih Off
Silahkan Reboot vps kalian
```
