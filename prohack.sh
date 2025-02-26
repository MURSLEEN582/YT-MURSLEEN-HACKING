#!/bin/bash
# Ultimate Fake Hacking Tool - Pro UI Edition

# Set Screen Size
stty cols 80 rows 24

# Clear Screen
clear

# Display Hacker Name with Animation
figlet "HACKING MODE" | lolcat
sleep 2
echo -e "\e[32m[+] Connecting to Anonymous Server...\e[0m" | pv -qL 10
sleep 3

# Fake IP Address
IP="192.168.$((RANDOM % 255)).$((RANDOM % 255))"
echo -e "\e[34m[*] Target Locked: $IP\e[0m" | pv -qL 10
sleep 2

# Fake Server Response
echo -e "\e[33m[!] Exploiting Server Vulnerabilities...\e[0m" | pv -qL 10
sleep 3
echo -e "\e[31m[+] Firewall Detected! Bypassing Security...\e[0m" | pv -qL 10
sleep 2

# Fake Password Cracking
echo -e "\e[32m[+] Running Brute Force Attack...\e[0m" | pv -qL 10
sleep 1

for i in {1..5}; do
  echo -e "\e[31m[+] Password Found: $(openssl rand -hex 6)\e[0m" | pv -qL 10
  sleep 2
done

# Fake Database Extraction
echo -e "\e[34m[*] Extracting Database Files...\e[0m" | pv -qL 10
sleep 2
for i in {1..10}; do
  echo -e "\e[32m[+] Downloaded: user_data_$i.sql (5GB)\e[0m" | pv -qL 10
  sleep 1
done

# Fake Webcam Hack (Just for Fun)
echo -e "\e[31m[+] Activating Target’s Webcam...\e[0m" | pv -qL 10
sleep 2
echo -e "\e[32m[+] Webcam Feed: https://anonymous-darknet/$IP/cam_feed.mp4\e[0m" | pv -qL 10
sleep 3

# Fake System Shutdown
echo -e "\e[31m[*] Deleting Target System Files...\e[0m" | pv -qL 10
sleep 3
echo -e "\e[34m[+] Operation Successful! Disconnecting...\e[0m" | pv -qL 10
sleep 2

# Clear Screen and Exit
clear
echo -e "\e[32mHacking Complete! Goodbye!\e[0m" | pv -qL 10
exit

