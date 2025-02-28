import os
import time
import random
import sys
from rich.console import Console
from rich.progress import track
from rich.panel import Panel

console = Console()

# Banner
console.print(Panel.fit(f"""
[bold magenta]=================================[/bold magenta]
[yellow]  YT-MURSLEEN CHEATS VIP TOOL 👑 [/yellow]
[bold magenta]=================================[/bold magenta]
""", title="🔥 HACKING TOOL 🔥"))

# Fake Loading Animation
def loading_bar(task, seconds):
    for _ in track(range(seconds), description=f"[cyan]{task}..."):
        time.sleep(0.1)

# Fake Hacking Commands
commands = [
    "Scanning Network...",
    "Bypassing Firewalls...",
    "Accessing Root Shell...",
    "Extracting User Data...",
    "Decrypting Passwords...",
    "Injecting Malware...",
    "Tracking GPS Location...",
    "System Takeover in 10s..."
]

# Fake Hacking Process
console.print(f"\n[green]Initializing System...[/green]\n")
loading_bar("Starting Hack", 10)

for cmd in commands:
    time.sleep(random.uniform(1, 2.5))
    console.print(f"[cyan][+] {cmd}[/cyan]")

console.print(f"\n[red][ERROR] Unauthorized Access! Self-Destructing...\n")

# Matrix Effect
def matrix():
    matrix_chars = "0123456789#*%-+@qwertyuiopasdfghjklzxcvbnm"
    try:
        while True:
            console.print("".join(random.choice(matrix_chars) for _ in range(50)), style="green")
            time.sleep(0.1)
    except KeyboardInterrupt:
        console.print("\n[red]Process Terminated![/red]")

# Show Fake Hacking Tool Image
console.print("\n[bold cyan]Displaying Hacking Interface...[/bold cyan]")
os.system("termimage hacking.png")  # Change to your hacking tool image

# Play Fake Hacking Video
console.print("\n[bold red]Playing Live Hacking Video...[/bold red]")
os.system("mpv hacking.mp4")  # Change to your hacking video file

# Start Matrix Effect
matrix()
