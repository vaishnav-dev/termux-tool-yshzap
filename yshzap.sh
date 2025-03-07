#!/bin/bash

# Colors
green="\e[32m"
red="\e[31m"
blue="\e[34m"
yellow="\e[33m"
reset="\e[0m"

clear
echo -e "${green}█▀█ █▀▀ █▀█ █▄░█ ▀█▀ █▀▀ ▄▀█ █▄░█${reset}"
echo -e "${red}█▀▄ ██▄ █▄█ █░▀█ ░█░ ██▄ █▀█ █░▀█${reset}"
echo -e "${yellow}Y'SHZ∆P Tool - By Vaishnav🦊${reset}"
echo -e "${blue}--------------------------------------${reset}"

read -p "Enter target phone number: " target
echo ""
echo -e "${yellow}Initializing hack on $target ...${reset}"
sleep 3

# Fake hacking animation for 2 minutes (120 seconds)
end=$((SECONDS+120))

while [ $SECONDS -lt $end ]; do
    random_text=$(head /dev/urandom | tr -dc 'A-Za-z0-9!@#$%^&*()_+' | head -c 20)
    echo -e "${green}[$SECONDS sec] Processing: $random_text${reset}"
    sleep 1
done

echo ""
echo -e "${green}100% Hack Successful!${reset}"
sleep 1
echo -e "${blue}--------------------------------------${reset}"
echo -e "${yellow}Target Number: $target${reset}"
echo -e "${red}Database Breached: YES${reset}"
echo -e "${red}Encrypted Messages: Cracked${reset}"
echo -e "${red}Call Logs: Retrieved${reset}"
echo -e "${red}Account Access: Granted${reset}"
echo -e "${blue}--------------------------------------${reset}"
echo -e "${red}NOTE: This is a prank tool. No real hacking is happening!${reset}"
