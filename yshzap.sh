#!/bin/bash

# Colors
red="\e[31m"
blue="\e[34m"
yellow="\e[33m"
green="\e[32m"
reset="\e[0m"

# Banner function
banner() {
  for i in {1..3}; do
    clear
    echo -e "${red} █▄█ █▀ █░█ ▀█ ▄▀█ █▀█ ${reset}"
    echo -e "${blue} ░█░ ▄█ █▀█ █▄ █▀█ █▀▀ ${reset}"
    echo -e "${red} Y'SHZ∆P Tool - By Vaishnav🦊 ${reset}"
    echo -e "${blue} -------------------------------------- ${reset}"
    sleep 0.3
    clear
    echo -e "${blue} █▄█ █▀ █░█ ▀█ ▄▀█ █▀█ ${reset}"
    echo -e "${red} ░█░ ▄█ █▀█ █▄ █▀█ █▀▀ ${reset}"
    echo -e "${blue} Y'SHZ∆P Tool - By Vaishnav🦊 ${reset}"
    echo -e "${red} -------------------------------------- ${reset}"
    sleep 0.3
  done
}

# Fake hacking progress
fast_hacking_progress() {
  steps=("Scanning target..." "Bypassing security..." "Injecting exploit..."
         "Accessing database..." "Retrieving credentials..."
         "Decrypting messages..." "Extracting data...")
  for i in {1..10}; do
    step=${steps[$RANDOM % ${#steps[@]}]}
    echo -e "${blue}[+] $step${reset}"
    sleep 0.2
  done
}

# Fake phone hack
hack_phone() {
  read -p "Enter target phone number: " target
  echo -e "${yellow}Initializing hack on $target ...${reset}"
  sleep 1
  fast_hacking_progress
  echo -e "${green}100% PHONE HACK SUCCESS!${reset}"
  echo -e "${red}Messages: Decrypted${reset}"
  echo -e "${red}Live Location: Tracked${reset}"
  read -p "Press Enter to return to menu..."
}

# Fake WiFi hack
hack_wifi() {
  read -p "Enter target WiFi name: " wifi
  echo -e "${yellow}Scanning network $wifi ...${reset}"
  sleep 1
  fast_hacking_progress
  echo -e "${green}100% WiFi HACK SUCCESS!${reset}"
  echo -e "${red}Password: P@ssw0rd123${reset}"
  read -p "Press Enter to return to menu..."
}

# Fake social media hack
hack_social() {
  echo -e "${yellow}Select a platform to hack:${reset}"
  echo -e "1. Facebook"
  echo -e "2. Instagram"
  echo -e "3. WhatsApp"
  read -p "Choose an option: " social_choice
  echo -e "${yellow}Fetching login data...${reset}"
  sleep 1
  fast_hacking_progress
  echo -e "${green}100% SOCIAL MEDIA HACK SUCCESS!${reset}"
  echo -e "${red}Username: target_user${reset}"
  echo -e "${red}Password: H@ckedUser123${reset}"
  read -p "Press Enter to return to menu..."
}

# Show banner
banner

# Main menu
while true; do
  echo -e "${blue}Select an option:${reset}"
  echo -e "${yellow}1. Hack a Phone Number"
  echo -e "2. Hack WiFi Password"
  echo -e "3. Hack Social Media"
  echo -e "4. Exit${reset}"
  read -p "Choose an option: " choice

  case $choice in
    1) hack_phone ;;
    2) hack_wifi ;;
    3) hack_social ;;
    4) echo -e "${red}Exiting...${reset}"; exit ;;
    *) echo -e "${red}Invalid option! Try again.${reset}"; sleep 2 ;;
  esac
done
