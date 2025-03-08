#!/bin/bash

# Colors
red="\e[31m"
blue="\e[34m"
yellow="\e[33m"
green="\e[32m"
reset="\e[0m"

# Check Dependencies
check_dependencies() {
  for cmd in openssl uuidgen shuf lspci; do
    if ! command -v $cmd &> /dev/null; then
      echo -e "${red}[ERROR] Missing command: $cmd. Install it using your package manager.${reset}"
      exit 1
    fi
  done
}

# Hacker Terminal Effect
hacker_terminal() {
  clear
  echo -e "${green}[+] Initializing Terminal...${reset}"
  sleep 1
  echo -e "${yellow}[+] Connecting to Secure Server...${reset}"
  sleep 1
  for i in {1..15}; do
    echo -ne "[+] Terminal output:   $(date +%T) \r"
    sleep 1
  done
  echo ""
}

# Banner Function
banner() {
  clear
  echo -e "${red} █▄█ █▀ █░█ ▀█ ▄▀█ █▀█ ${reset}"
  echo -e "${blue} ░█░ ▄█ █▀█ █▄ █▀█ █▀▀ ${reset}"
  echo -e "${red} Y'SHZ∆P Tool - By Vaishnav🦊 ${reset}"
  echo -e "${blue} -------------------------------------- ${reset}"
  sleep 1
}

# Fake Hacking Animation
hacking_animation() {
  for i in {1..20}; do
    echo -ne "${blue}[+] Connecting to target${reset}"; sleep 0.1
    for j in {1..3}; do echo -ne "."; sleep 0.1; done
    echo ""
    echo -e "${yellow}[~] Running exploits...${reset}"
    sleep 0.5
    echo -e "${green}[✓] Exploit success: ${red}0x$(openssl rand -hex 3)${reset}"
    sleep 0.5
  done
}

# Fake Progress Bar
progress_bar() {
  echo -ne "${blue}[+] Hacking in progress: ${reset}"
  for i in {1..100}; do
    echo -ne "█"
    sleep 0.$((RANDOM % 3))
  done
  echo ""
}

# Fake Data Extraction
extract_fake_data() {
  sleep 1
  echo -e "${red}--- Data Extracted ---${reset}"
  echo -e "ID: $(shuf -i 10000000-99999999 -n 1)"
  echo -e "Session Token: $(uuidgen)"
  echo -e "OS Build: b$(openssl rand -hex 3)"
  echo -e "Kernel Ver.: 3.$((RANDOM % 20)).$((RANDOM % 99))-perf-g$(openssl rand -hex 4)"
  echo -e "Boot ID: $(uuidgen)"
  echo -e "Last Access: $(date)"
  echo -e "Geo Coord: $(shuf -i -90-90 -n 1), $(shuf -i -180-180 -n 1)"
  echo -e "IMEI: $(shuf -i 100000000000000-999999999999999 -n 1)"
  echo -e "Device Model: XJ-$((RANDOM % 999 + 100))"
  echo -e "Serial No.: $(shuf -i 100000000000000-999999999999999 -n 1)"
  echo -e "CPU: Cortex-A$(shuf -i 50-78 -n 1)"
  echo -e "GPU: $(lspci | grep -i VGA | awk '{print $5}')"
  echo -e "RAM: $((RANDOM % 32 + 1))GB"
  echo -e "Disk ID: $(openssl rand -hex 8)"
  echo -e "Active Ports: $((RANDOM % 50 + 10)) open"
  echo -e "File Count: $((RANDOM % 5000 + 500))"
  echo -e "Net Latency: $((RANDOM % 50 + 5))ms"
  echo -e "Conn Speed: $((RANDOM % 1000 + 100))Mbps"
  echo -e "ISP: $(shuf -e 'FiberXNet' 'AirWeb' 'SpeedCom' -n 1)"
  echo -e "DNS: 8.8.8.$((RANDOM % 256)), 8.8.4.$((RANDOM % 256))"
  echo -e "MAC: $(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')"
  echo -e "Firewall: Active"
  echo -e "Intrusions: $((RANDOM % 50)) detected"
  echo -e "Encryption: AES-256"
  echo -e "Bluetooth: $((RANDOM % 2 == 0 ? "Enabled" : "Disabled"))"
  echo -e "Installed Apps: $(shuf -e 'AppX' 'AppY' 'AppZ' 'SecureChat' 'SpyTool' -n 3)"
  echo -e "Location Zone: $(shuf -e 'Alpha' 'Beta' 'Gamma' -n 1)"
  echo -e "Mode: $(shuf -e 'X-Active' 'Stealth' 'Dark' -n 1)"
  echo -e "Virtualization: $(shuf -e 'Enabled' 'Disabled' -n 1)"
  echo -e "Proxy: 192.168.$((RANDOM % 255)).$((RANDOM % 255))"
  echo -e "Antivirus: $(shuf -e 'None Detected' 'Outdated' 'Bypassed' -n 1)"
  echo -e "History: Crawled"
  echo -e "Cache: $((RANDOM % 1000))MB"
  echo -e "Uptime: $((RANDOM % 200)) hrs"
  echo -e "Secret Key: $(openssl rand -hex 2)"
  echo -e "Debug Log: $(openssl rand -hex 4)"
}

# Show Banner and Hacker Terminal
check_dependencies
hacker_terminal
banner

# Main Menu
while true; do
  clear
  echo -e "${blue}=== Y'SHZ∆P - Advanced Exploit Tool ===${reset}"
  echo -e "${yellow}1. Hack a Phone Number"
  echo -e "2. Hack WiFi Network"
  echo -e "3. Hack Social Media"
  echo -e "4. Hack Bank Database (Fake)"
  echo -e "5. Extract Personal Data"
  echo -e "6. Scan Internet Traffic"
  echo -e "7. Monitor Live Locations"
  echo -e "8. Spy on Camera & Mic (Fake)"
  echo -e "9. Exit${reset}"
  read -p "Choose an option: " choice

  case $choice in
    1) echo -e "${yellow}Hacking phone...${reset}"; sleep 2; hacking_animation; progress_bar; extract_fake_data ;;
    2) echo -e "${yellow}Scanning WiFi...${reset}"; sleep 2; hacking_animation; progress_bar; extract_fake_data ;;
    3) echo -e "${yellow}Fetching social login...${reset}"; sleep 2; hacking_animation; progress_bar; extract_fake_data ;;
    4|5|6|7|8) echo -e "${yellow}Processing...${reset}"; sleep 2; hacking_animation; progress_bar; extract_fake_data ;;
    9) echo -e "${red}Exiting...${reset}"; exit ;;
    *) echo -e "${red}Invalid option!${reset}"; sleep 2 ;;
  esac
done
