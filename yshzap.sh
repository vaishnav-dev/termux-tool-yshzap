#!/bin/bash

# Colors
green="\e[32m"
red="\e[31m"
blue="\e[34m"
yellow="\e[33m"
reset="\e[0m"

# Function to display a fancy banner
banner() {
    clear
    echo -e "${green}█▄█ █▀ █░█ ▀█ ▄▀█ █▀█${reset}"
    echo -e "${red}░█░ ▄█ █▀█ █▄ █▀█ █▀▀${reset}"
    echo -e "${yellow}Y'SHZ∆P Tool - By Vaishnav🦊${reset}"
    echo -e "${blue}--------------------------------------${reset}"
}

# Super-fast hacking progress
fast_hacking_progress() {
    steps=(
        "Scanning target device..."
        "Bypassing firewall..."
        "Injecting malware..."
        "Exploiting vulnerabilities..."
        "Accessing database..."
        "Fetching login credentials..."
        "Decrypting messages..."
        "Cracking WiFi WPA2 keys..."
        "Extracting call logs..."
        "Retrieving deleted messages..."
        "Activating keylogger..."
        "Hijacking webcam..."
        "Fetching GPS location..."
        "Spoofing MAC address..."
        "Connecting to Deep Web..."
        "Sending data to darknet..."
    )

    start_time=$(date +%s)
    while [ $(($(date +%s) - start_time)) -lt 20 ]; do
        step=${steps[$RANDOM % ${#steps[@]}]}
        echo -e "${blue}[+] $step${reset}"
        sleep 0.1
    done
}

# Matrix-style letter rain animation
letter_rain() {
    chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@#$%&*"
    for ((i=0; i<20; i++)); do
        line=""
        for ((j=0; j<60; j++)); do
            line+="${chars:RANDOM % ${#chars}:1} "
        done
        echo -e "${green}$line${reset}"
        sleep 0.03
    done
}

# Fake Phone Number Hack
hack_phone() {
    banner
    read -p "Enter target phone number: " target
    echo -e "${yellow}Initializing hack on $target ...${reset}"
    sleep 1
    fast_hacking_progress
    sleep 1
    letter_rain

    echo -e "${green}100% PHONE HACK SUCCESS!${reset}"
    echo -e "${yellow}Target Number: $target${reset}"
    echo -e "${red}Database Breached: YES${reset}"
    echo -e "${red}Messages: Decrypted${reset}"
    echo -e "${red}Call Logs: Retrieved${reset}"
    echo -e "${red}Live GPS Location: Tracked${reset}"
    read -p "Press Enter to return to menu..."
}

# Fake WiFi Hack
hack_wifi() {
    banner
    read -p "Enter target WiFi name: " wifi
    echo -e "${yellow}Scanning network $wifi ...${reset}"
    sleep 1
    fast_hacking_progress
    sleep 1
    letter_rain

    echo -e "${green}100% WiFi HACK SUCCESS!${reset}"
    echo -e "${yellow}Target WiFi: $wifi${reset}"
    echo -e "${red}Password: P@ssw0rd123${reset}"
    read -p "Press Enter to return to menu..."
}

# Fake Social Media Hack
hack_social() {
    banner
    echo -e "${blue}Select social media to hack:${reset}"
    echo -e "${yellow}1. Facebook"
    echo -e "2. Instagram"
    echo -e "3. WhatsApp"
    echo -e "4. Gmail"
    echo -e "5. Back to menu${reset}"
    read -p "Choose an option: " social_choice

    if [[ "$social_choice" == "5" ]]; then return; fi

    echo -e "${yellow}Fetching login data...${reset}"
    sleep 1
    fast_hacking_progress
    sleep 1
    letter_rain

    echo -e "${green}100% SOCIAL MEDIA HACK SUCCESS!${reset}"
    echo -e "${yellow}Username: target_user${reset}"
    echo -e "${red}Password: H@ckedUser123${reset}"
    read -p "Press Enter to return to menu..."
}

# Fake IP Tracker
track_ip() {
    banner
    read -p "Enter IP address to track: " ip
    echo -e "${yellow}Tracking IP $ip ...${reset}"
    sleep 1
    fast_hacking_progress
    sleep 1
    letter_rain

    echo -e "${green}100% IP TRACE SUCCESS!${reset}"
    echo -e "${yellow}IP Address: $ip${reset}"
    echo -e "${red}Location: Dark Web Proxy (Hidden)${reset}"
    echo -e "${red}ISP: Anonymous Proxy${reset}"
    read -p "Press Enter to return to menu..."
}

# Fake Webcam Hack
hack_webcam() {
    banner
    read -p "Enter target device IP: " ip
    echo -e "${yellow}Accessing webcam of $ip ...${reset}"
    sleep 1
    fast_hacking_progress
    sleep 1
    letter_rain

    echo -e "${green}100% WEBCAM ACCESS SUCCESS!${reset}"
    echo -e "${yellow}Live Video Feed: ENABLED${reset}"
    echo -e "${red}Face Recognition: ACTIVE${reset}"
    read -p "Press Enter to return to menu..."
}

# Fake Deep Web Exploit
deep_web() {
    banner
    echo -e "${yellow}Connecting to Deep Web servers...${reset}"
    sleep 1
    fast_hacking_progress
    sleep 1
    letter_rain

    echo -e "${green}ACCESS TO DEEP WEB GRANTED!${reset}"
    echo -e "${yellow}Anonymized Network: ON${reset}"
    echo -e "${red}Hidden Exploit Logs: ENABLED${reset}"
    read -p "Press Enter to return to menu..."
}

# Main Menu
while true; do
    banner
    echo -e "${blue}Select an option:${reset}"
    echo -e "${yellow}1. Hack a Phone Number"
    echo -e "2. Hack WiFi Password"
    echo -e "3. Hack Social Media"
    echo -e "4. Track an IP Address"
    echo -e "5. Hack a Webcam"
    echo -e "6. Access Deep Web"
    echo -e "7. Exit${reset}"
    read -p "Choose an option: " choice

    case $choice in
        1) hack_phone ;;
        2) hack_wifi ;;
        3) hack_social ;;
        4) track_ip ;;
        5) hack_webcam ;;
        6) deep_web ;;
        7) echo -e "${red}Exiting...${reset}"; exit ;;
        *) echo -e "${red}Invalid option! Try again.${reset}"; sleep 2 ;;
    esac
done
