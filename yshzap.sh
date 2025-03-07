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

# Function to show a progress bar
progress_bar() {
    bar="█████████████████████████"
    for ((i=0; i<=20; i++)); do
        echo -ne "${green}[${bar:0:$i}>${bar:$i:20}] $(( (i+1) * 5 ))%\r${reset}"
        sleep 0.2
    done
    echo -e "\n"
}

# Function to generate fake random text
random_text() {
    head /dev/urandom | tr -dc 'A-Za-z0-9!@#$%^&*()_+' | head -c 25
}

# Function to generate random passwords
generate_passwords() {
    echo -e "${red}Fake Leaked Passwords:${reset}"
    for i in {1..5}; do
        fake_pass=$(random_text)
        echo -e "${yellow} - user$i: $fake_pass${reset}"
    done
}

# Function to display a fake hacking animation
hacking_animation() {
    end=$((SECONDS+60))
    while [ $SECONDS -lt $end ]; do
        echo -e "${green}[$SECONDS sec] Processing: $(random_text)${reset}"
        sleep 0.5
    done
}

# Function to display random hacker quotes
hacker_quotes() {
    quotes=("Access Granted."
            "Bypassing Firewall..."
            "Connecting to Deep Web Servers..."
            "Decrypting Passwords..."
            "Exploiting Vulnerabilities..."
            "Establishing Backdoor Connection..."
            "System Breached!")
    echo -e "${blue}[+] ${quotes[$RANDOM % ${#quotes[@]}]}${reset}"
}

# Function to hack a phone number (Fake)
hack_phone() {
    banner
    read -p "Enter target phone number: " target
    echo -e "${yellow}Initializing hack on $target ...${reset}"
    sleep 2
    progress_bar

    # Hacking Stages
    stages=("Bypassing Firewall"
            "Accessing Database"
            "Decrypting Messages"
            "Retrieving Call Logs"
            "Extracting Account Credentials"
            "Finalizing Exploit")

    for stage in "${stages[@]}"; do
        hacker_quotes
        sleep 2
    done

    hacking_animation
    generate_passwords

    echo -e "${green}100% Cracking Successful!${reset}"
    sleep 1
    echo -e "${yellow}Target Number: $target${reset}"
    echo -e "${red}Database Breached: YES${reset}"
    echo -e "${red}Encrypted Messages: Cracked${reset}"
    echo -e "${red}Call Logs: Retrieved${reset}"
    echo -e "${red}Account Access: Granted${reset}"
    echo -e "${blue}--------------------------------------${reset}"
    echo -e "${red}Visit: yshzap.vercel.app ! - いたずらです${reset}"
    read -p "Press Enter to return to menu..."
}

# Function to hack WiFi (Fake)
hack_wifi() {
    banner
    read -p "Enter target WiFi name: " wifi
    echo -e "${yellow}Scanning network $wifi ...${reset}"
    sleep 2
    progress_bar

    echo -e "${green}[+] Network Exploit Found!${reset}"
    sleep 1
    echo -e "${red}Cracking WPA2 Encryption...${reset}"
    sleep 3
    hacking_animation
    generate_passwords

    echo -e "${green}WiFi Hack Successful!${reset}"
    echo -e "${yellow}Target WiFi: $wifi${reset}"
    echo -e "${red}Password: $(random_text)${reset}"
    read -p "Press Enter to return to menu..."
}

# Function to hack social media (Fake)
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
    sleep 2
    progress_bar

    echo -e "${red}Exploiting 2FA Security...${reset}"
    sleep 3
    hacking_animation
    generate_passwords

    echo -e "${green}Social Media Hack Successful!${reset}"
    echo -e "${yellow}Username: target_user${reset}"
    echo -e "${red}Password: $(random_text)${reset}"
    read -p "Press Enter to return to menu..."
}

# Function to scan system info (Fake)
scan_system() {
    banner
    echo -e "${yellow}Scanning device information...${reset}"
    sleep 3
    progress_bar

    echo -e "${green}Device: iPhone 15 Pro Max${reset}"
    echo -e "${green}OS: iOS 17.2${reset}"
    echo -e "${green}IP Address: 192.168.1.$((RANDOM % 255))${reset}"
    echo -e "${green}Location: Unknown (VPN Active)${reset}"
    echo -e "${green}Status: Compromised${reset}"
    read -p "Press Enter to return to menu..."
}

# Main Menu
while true; do
    banner
    echo -e "${blue}Select an option:${reset}"
    echo -e "${yellow}1. Hack a Phone Number"
    echo -e "2. Hack WiFi Password"
    echo -e "3. Hack Social Media"
    echo -e "4. Scan System Information"
    echo -e "5. Exit${reset}"
    read -p "Choose an option: " choice

    case $choice in
        1) hack_phone ;;
        2) hack_wifi ;;
        3) hack_social ;;
        4) scan_system ;;
        5) echo -e "${red}Exiting...${reset}"; exit ;;
        *) echo -e "${red}Invalid option! Try again.${reset}"; sleep 2 ;;
    esac
done
