#!/bin/bash

# 🎨 Colors
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
purple='\033[1;35m'
cyan='\033[1;36m'
white='\033[1;37m'
reset='\033[0m'

# 🎉 Welcome Banner
clear
echo -e "${cyan}===================================="
echo -e "${yellow}🔹 YT-MURSLEEN VIP TOOL 🔹"
echo -e "${blue}📌 120FPS Unlock for PUBG Mobile"
echo -e "${purple}💬 Join Telegram: https://t.me/yt_mursleen_cheats_vip"
echo -e "${cyan}====================================${reset}"

# 🛠️ Setup Directories
mkdir -p $HOME/120FPS_TOOL/INPUT
mkdir -p $HOME/120FPS_TOOL/OUTPUT
mkdir -p $HOME/120FPS_TOOL/EXTRACTED
mkdir -p $HOME/120FPS_TOOL/MODDED

# 📌 File Paths
INPUT_PAK="$HOME/120FPS_TOOL/INPUT/game_patch_3.6.0.19551.pak"
OUTPUT_PAK="$HOME/120FPS_TOOL/OUTPUT/game_patch_3.6.0.19551.pak"
MODDED_DAT="$HOME/120FPS_TOOL/MODDED/00021e30.dat"

# 🎭 Main Menu
echo ""
echo -e "${yellow}📢 [1] Start 120FPS Unlock"
echo -e "${cyan}📢 [2] Join Telegram Channel"
echo -e "${red}📢 [3] Exit${reset}"
read -p "👉 Choose an option (1-3): " option

# 📌 Telegram Option
if [ "$option" == "2" ]; then
    echo -e "${blue}🔗 Opening Telegram...${reset}"
    termux-open-url "https://t.me/yt_mursleen_cheats_vip"
    exit 0
elif [ "$option" == "3" ]; then
    echo -e "${red}❌ Exiting Tool!${reset}"
    exit 0
fi

# ✅ Check if Input PAK exists
if [ ! -f "$INPUT_PAK" ]; then
    echo -e "${red}❌ Original game_patch_3.6.0.19551.pak ko INPUT folder me rakho!${reset}"
    exit 1
fi

# 🔓 Unpacking PAK (Using unzip Method)
echo -e "${yellow}🔓 Unpacking PAK File...${reset}"
unzip -o "$INPUT_PAK" -d "$HOME/120FPS_TOOL/EXTRACTED" > /dev/null 2>&1

# ✅ Check if Unpack was Successful
if [ ! -f "$HOME/120FPS_TOOL/EXTRACTED/00021e30.dat" ]; then
    echo -e "${red}❌ Unpacking Failed!${reset}"
    exit 1
fi

# 🔄 Replace Original DAT with Modded DAT
echo -e "${cyan}⚡ Replacing 120FPS Data File...${reset}"
cp -f "$MODDED_DAT" "$HOME/120FPS_TOOL/EXTRACTED/00021e30.dat"

# 🔒 Repacking Modified PAK
echo -e "${blue}📦 Repacking PAK File...${reset}"
cd "$HOME/120FPS_TOOL/EXTRACTED"
zip -r "$OUTPUT_PAK" . > /dev/null 2>&1

# ✅ Done!
echo -e "${green}✅ 120FPS Unlock Successful!${reset}"
echo -e "${yellow}📁 Modified PAK saved in OUTPUT folder.${reset}"

# 🔄 Auto Restart Script (Fix for Running Again)
echo ""
read -p "🔄 Do you want to run the tool again? (y/n): " restart
if [ "$restart" == "y" ]; then
    exec "$0"
else
    echo -e "${red}❌ Exiting...${reset}"
    exit 0
fi
