#!/bin/bash

# Function to open Telegram channel
open_telegram() {
    am start -a android.intent.action.VIEW -d "https://t.me/yt_mursleen_cheats_vip" > /dev/null 2>&1
}

# Check if running on Termux (for Android users)
if [ -n "$TERMUX_VERSION" ]; then
    clear
    echo -e "\e[36m[+] Running on Termux detected...\e[0m"
    sleep 2
else
    echo -e "\e[31m[-] Warning: This tool is optimized for Termux!\e[0m"
    sleep 2
fi

clear

# UI Design
while true; do
    clear
    echo -e "\e[35m================================="
    echo -e "  YT-MURSLEEN CHEATS VIP TOOL  "
    echo -e "=================================\e[0m"
    
    echo -e "\e[32m[1] ESP Hack Activation"
    echo -e "[2] Aimbot Injection"
    echo -e "[3] Anti-Ban Protection"
    echo -e "[4] Unlock 120FPS"
    echo -e "[5] Exit\e[0m"
    
    echo -ne "\n\e[33mSelect an option: \e[0m"
    read -r option
    
    case "$option" in
        1|2|3|4) 
            echo -e "\n\e[32mRedirecting to Telegram Channel...\e[0m"
            sleep 2
            open_telegram
            ;;
        5) 
            echo -e "\n\e[31mExiting...\e[0m"
            exit 0
            ;;
        *)
            echo -e "\n\e[31mInvalid option! Try again.\e[0m"
            sleep 2
            ;;
    esac
done
