#!/bin/bash

clear

# Colors
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
reset=$(tput sgr0)

# Header Fix
echo "${cyan}========================================"
echo "${magenta}      YT-MURSLEEN HACKING TOOL"
echo "${white}========================================${reset}"
sleep 1

# Menu
while true; do
    echo -e "\n${blue}Choose an option:${reset}"
    echo -e "${green}1)${reset} Hack WiFi"
    echo -e "${green}2)${reset} DDOS Attack"
    echo -e "${green}3)${reset} Hack Facebook"
    echo -e "${green}4)${reset} Hack Instagram"
    echo -e "${green}5)${reset} Hack WhatsApp"
    echo -e "${green}6)${reset} Hack PUBG Accounts"
    echo -e "${green}7)${reset} Hack Google Account"
    echo -e "${green}8)${reset} Hack Mobile Camera"
    echo -e "${green}9)${reset} Trace IP Address"
    echo -e "${red}10) Exit${reset}"

    echo -ne "${yellow}Enter your choice: ${reset}"
    read choice

    case "$choice" in
        1) echo -e "\n${cyan}[+] Scanning WiFi networks...${reset}"; sleep 2 ;;
        2) echo -e "\n${cyan}[+] Preparing DDOS attack...${reset}"; sleep 2 ;;
        3) echo -e "\n${cyan}[+] Hacking Facebook...${reset}"; sleep 2 ;;
        4) echo -e "\n${cyan}[+] Hacking Instagram...${reset}"; sleep 2 ;;
        5) echo -e "\n${cyan}[+] Accessing WhatsApp...${reset}"; sleep 2 ;;
        6) echo -e "\n${cyan}[+] Hacking PUBG Account...${reset}"; sleep 2 ;;
        7) echo -e "\n${cyan}[+] Hacking Google Account...${reset}"; sleep 2 ;;
        8) echo -e "\n${cyan}[+] Hacking Mobile Camera...${reset}"; sleep 2 ;;
        9) echo -e "\n${cyan}[+] Tracing IP Address...${reset}"; sleep 2 ;;
        10) echo -e "${red}Exiting...${reset}"; exit 0 ;;
        *) echo -e "${red}Invalid choice! Try again.${reset}";;
    esac
done