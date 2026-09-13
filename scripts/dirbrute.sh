#!/bin/bash
# Directory Brute Force Script
# Fast directory enumeration

if [ -z "$1" ]; then
  echo "Usage: $0 <URL> [wordlist]"
  exit 1
fi

URL=$1
WORDLIST=${2:-./wordlists/directories.txt}

echo "🔍 Directory Brute Forcing: $URL"
echo ""

echo "[*] Using wordlist: $WORDLIST"
echo "[*] Starting FFUF..."

ffuf -u "${URL}/FUZZ" \
  -w $WORDLIST \
  -o results.json \
  -of json \
  -v

echo ""
echo "✅ Results saved to results.json"
