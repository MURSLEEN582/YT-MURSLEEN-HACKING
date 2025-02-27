#!/bin/bash

# Tool ka Folder Setup
TOOL_DIR="$HOME/120FPS_TOOL"
INPUT_DIR="$TOOL_DIR/INPUT"
OUTPUT_DIR="$TOOL_DIR/OUTPUT"
SCRIPT_DIR="$TOOL_DIR/scripts"

# Zaroori Folder Banayein
mkdir -p "$INPUT_DIR" "$OUTPUT_DIR" "$SCRIPT_DIR"

# Check karo agar QuickBMS hai
if [ ! -f "$TOOL_DIR/quickbms" ]; then
    echo "❌ QuickBMS missing! Install karne ke liye 'wget' use karo."
    exit 1
fi

# User ko Guide Do
echo "🟢 Original game_patch_3.6.0.19551.pak ko INPUT folder me rakho!"
echo "🟢 Modding Start ho rahi hai..."

# Check karo agar INPUT file hai
if [ ! -f "$INPUT_DIR/game_patch_3.6.0.19551.pak" ]; then
    echo "❌ Error: INPUT folder me game_patch_3.6.0.19551.pak nahi mila!"
    exit 1
fi

# Unpack karna
echo "🔓 Unpacking PAK File..."
"$TOOL_DIR/quickbms" -o "$SCRIPT_DIR/unpack_script.bms" "$INPUT_DIR/game_patch_3.6.0.19551.pak" "$SCRIPT_DIR/unpacked"

# Check karo agar unpack successful hua
if [ ! -d "$SCRIPT_DIR/unpacked" ]; then
    echo "❌ Unpacking Failed!"
    exit 1
fi

# Replace original 00021e30.dat with modded one
echo "♻️ Replacing 00021e30.dat with Modded Version..."
cp "$TOOL_DIR/modded_00021e30.dat" "$SCRIPT_DIR/unpacked/00021e30.dat"

# Repack karna
echo "📦 Repacking PAK File..."
"$TOOL_DIR/quickbms" -o "$SCRIPT_DIR/repack_script.bms" "$SCRIPT_DIR/unpacked" "$OUTPUT_DIR/game_patch_3.6.0.19551.pak"

# Final Check
if [ -f "$OUTPUT_DIR/game_patch_3.6.0.19551.pak" ]; then
    echo "✅ FPS Unlocked! New PAK File Saved in OUTPUT Folder."
else
    echo "❌ Error: Repacking Failed!"
    exit 1
fi