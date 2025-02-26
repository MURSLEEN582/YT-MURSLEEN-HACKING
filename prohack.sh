#!/bin/bash

clear
echo -e "\e[1;32m"
echo "========================================"
echo "   WELCOME TO YT-MURSLEEN HACKING TOOL  "
echo "========================================"
echo -e "\e[0m"

while true; do
    echo -e "\nChoose an option:"
    echo "1) Hack WiFi"
    echo "2) DDOS Attack"
    echo "3) Hack Facebook"
    echo "4) Hack Instagram"
    echo "5) Hack WhatsApp"
    echo "6) Hack PUBG Accounts"
    echo "7) Hack Google Account"
    echo "8) Hack Mobile Camera"
    echo "9) Trace IP Address"
    echo "10) Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo -e "\n[+] Scanning WiFi networks..."
            sleep 2
            echo "[+] Found: PTCL-Home-223"
            sleep 2
            echo "[+] Cracking Password..."
            sleep 3
            echo "[!] Password: ********"
            ;;
        2)
            echo -e "\n[+] Preparing DDOS attack..."
            sleep 2
            echo "[+] Target: 192.168.1.1"
            sleep 2
            echo "[+] Sending packets..."
            sleep 3
            echo "[!] Attack completed successfully!"
            ;;
        3)
            echo -e "\n[+] Connecting to Facebook servers..."
            sleep 2
            echo "[+] Bypassing security..."
            sleep 3
            echo "[!] Account credentials retrieved!"
            ;;
        4)
            echo -e "\n[+] Attempting Instagram hack..."
            sleep 2
            echo "[+] Fetching user database..."
            sleep 3
            echo "[!] Username: user_ig123 | Password: ********"
            ;;
        5)
            echo -e "\n[+] Connecting to WhatsApp servers..."
            sleep 2
            echo "[+] Accessing chat history..."
            sleep 3
            echo "[!] Chats downloaded successfully!"
            ;;
        6)
            echo -e "\n[+] Accessing PUBG game database..."
            sleep 2
            echo "[+] Searching for linked accounts..."
            sleep 3
            echo "[!] PUBG Account hacked successfully!"
            ;;
        7)
            echo -e "\n[+] Attempting Google account breach..."
            sleep 2
            echo "[+] Retrieving Gmail password..."
            sleep 3
            echo "[!] Email: user@gmail.com | Password: ********"
            ;;
        8)
            echo -e "\n[+] Activating target's camera..."
            sleep 2
            echo "[+] Capturing images..."
            sleep 3
            echo "[!] Images saved successfully!"
            ;;
        9)
            echo -e "\n[+] Tracing IP address..."
            sleep 2
            echo "[+] IP: 192.168.43.21 | Location: Karachi, Pakistan"
            sleep 3
            echo "[!] Tracking completed!"
            ;;
        10)
            echo "Exiting YT-MURSLEEN HACKING TOOL..."
            exit 0
            ;;
        *)
            echo "Invalid choice! Please enter a valid option."
            ;;
    esac
done
