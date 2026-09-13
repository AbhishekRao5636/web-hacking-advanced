#!/bin/bash
# Subdomain Enumeration Script
# Multiple methods for finding subdomains

if [ -z "$1" ]; then
  echo "Usage: $0 <domain.com>"
  exit 1
fi

DOMAIN=$1

echo "🔍 Enumerating Subdomains for $DOMAIN"
echo ""

# Passive Enumeration
echo "[*] Passive Enumeration (Subfinder)..."
subfinder -d $DOMAIN -o subdomains_passive.txt -silent

# Active Enumeration
echo "[*] Active Enumeration (Amass)..."
amass enum -d $DOMAIN -o subdomains_active.txt -silent

# Combine and deduplicate
echo "[*] Combining results..."
cat subdomains_*.txt | sort -u > subdomains_final.txt

# Probe with httpx
echo "[*] Probing with httpx..."
httpx -l subdomains_final.txt -o live_subdomains.txt -silent

echo ""
echo "✅ Done!"
echo "📁 Live subdomains: live_subdomains.txt"
