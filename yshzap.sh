#!/bin/bash

a="\e[31m"
b="\e[34m"
c="\e[33m"
d="\e[32m"
e="\e[0m"

center_text() {
  term_width=$(tput cols)
  text="$1"
  padding=$(( (term_width - ${#text}) / 2 ))
  printf "%*s%s%*s\n" "$padding" "" "$text" "$padding" ""
}

banner() {
  for i in {1..3}; do
    clear
    center_text "${a} █▄█ █▀ █░█ ▀█ ▄▀█ █▀█ ${e}"
    center_text "${b} ░█░ ▄█ █▀█ █▄ █▀█ █▀▀ ${e}"
    center_text "${a} Y'SHZ∆P - By VK🦊 ${e}"
    center_text "${b} --------------------------- ${e}"
    sleep 0.3
  done
}

progress() {
  for i in {1..20}; do
    echo -ne "${b}[+] Connecting${e}"; sleep 0.1
    for j in {1..3}; do echo -ne "."; sleep 0.1; done
    echo ""
    echo -e "${c}[~] Running...${e}"
    sleep 0.5
    echo -e "${d}[✓] Success: ${a}0x$(openssl rand -hex 3)${e}"
    sleep 0.5
  done
}

loading_bar() {
  echo -ne "${b}[+] Progress: ${e}"
  for i in {1..100}; do
    echo -ne "█"
    sleep 0.$((RANDOM % 3))
  done
  echo ""
}

dump_info() {
  echo -e "${a}--------------------------------------${e}"
  echo -e "${b}[*] Data stream initiated...${e}"
  sleep 1
  cat <<EOF
[+] >> 0x$(openssl rand -hex 6) :: PROC_ID=$(shuf -i 1000-9999 -n 1)
[+] >> UUID=$(openssl rand -hex 8)
[+] >> SYS_MODE: $(shuf -i 0-5 -n 1) | KERNEL::0x$(openssl rand -hex 4)
[+] >> MEM_ALLOC: $(shuf -i 100-999 -n 1)MB | CACHE=$(shuf -i 50-500 -n 1)MB
[+] >> NET_IFACE: eth$(shuf -i 0-9 -n 1) | MAC=00:$(openssl rand -hex 1):$(openssl rand -hex 1):$(openssl rand -hex 1):$(openssl rand -hex 1)
[+] >> GPS_LOC: $(shuf -i 10-90 -n 1).$(shuf -i 100000-999999 -n 1), $(shuf -i 10-90 -n 1).$(shuf -i 100000-999999 -n 1)
[+] >> IO_DEVICE: /dev/sd$(shuf -i 0-3 -n 1) | SIZE=$(shuf -i 10-100 -n 1)GB
[+] >> TASKS_RUNNING: $(shuf -i 10-100 -n 1) | THREADS=$(shuf -i 50-500 -n 1)
[+] >> LAST_SYNC: 0x$(openssl rand -hex 8)
[+] >> ARCH: ARMv$(shuf -i 5-8 -n 1) | LINUX_VERSION=$(shuf -i 3-6 -n 1).$(shuf -i 10-99 -n 1)
[+] >> BOOT_TIME: $(shuf -i 1000000000-2000000000 -n 1) UNIX
[+] >> ERR_CODE: 0x$(openssl rand -hex 4)
[+] >> DBG_FLAG: 0x$(openssl rand -hex 2)
[+] >> ACTIVE_SESSIONS: $(shuf -i 1-5 -n 1)
[+] >> RECENT_CMDS: 0x$(openssl rand -hex 6), 0x$(openssl rand -hex 6), 0x$(openssl rand -hex 6)
[+] >> HASH_AUTH: $(openssl rand -hex 16)
[+] >> TEMP_REG: $(shuf -i 30-80 -n 1)°C
[+] >> API_RESPONSE: 0x$(openssl rand -hex 8)
[+] >> CHKSUM: $(openssl rand -hex 12)
[+] >> PERM_ERR: FALSE
[+] >> DEBUG_MODE: ENABLED
[+] >> FILE_SYS: /mnt/data/$(openssl rand -hex 4).bin
[+] >> THREAD_LOCK: $(shuf -i 1-3 -n 1)
[+] >> MSG_QUEUE: $(shuf -i 10-50 -n 1)
[+] >> MEM_FRAG: $(shuf -i 1-99 -n 1)%
[+] >> SYS_LOAD: $(shuf -i 1-10 -n 1).$(shuf -i 0-9 -n 1)
[+] >> I/O OPS: $(shuf -i 1000-9999 -n 1)
[+] >> SECURE_FLAGS: 0x$(openssl rand -hex 4)
[+] >> CPU_STATE: $(shuf -i 0-100 -n 1)%
EOF
  echo -e "${a}--------------------------------------${e}"
}

fake_hack() {
  read -p "Enter target: " target
  echo -e "${c}Initializing on $target ...${e}"
  sleep 1
  progress
  loading_bar
  echo -e "${d}[✓] Complete!${e}"
  dump_info
  read -p "Press Enter..."
}

network_scan() {
  read -p "Enter network: " net
  echo -e "${c}Scanning $net ...${e}"
  sleep 1
  progress
  loading_bar
  echo -e "${d}[✓] Done!${e}"
  dump_info
  read -p "Press Enter..."
}

custom_option() {
  echo -e "${c}Choose:${e}"
  echo -e "1. A"
  echo -e "2. B"
  echo -e "3. C"
  read -p "Option: " opt
  echo -e "${c}Fetching...${e}"
  sleep 1
  progress
  loading_bar
  echo -e "${d}[✓] Success!${e}"
  dump_info
  read -p "Press Enter..."
}

banner

while true; do
  echo -e "${b}Menu:${e}"
  echo -e "${c}1. Fake Hack"
  echo -e "2. Network Scan"
  echo -e "3. Custom Option"
  echo -e "4. Exit${e}"
  read -p "Choose: " choice

  case $choice in
    1) fake_hack ;;
    2) network_scan ;;
    3) custom_option ;;
    4) echo -e "${a}Exit...${e}"; exit ;;
    *) echo -e "${a}Invalid!${e}"; sleep 2 ;;
  esac
done
