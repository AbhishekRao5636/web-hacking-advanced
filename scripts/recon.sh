#!/bin/bash
# Reconnaissance Automation Script
# Full recon pipeline for target

if [ -z "$1" ]; then
  echo "Usage: $0 <target.com>"
  exit 1
fi

TARGET=$1
OUTPUT_DIR="./recon_${TARGET}_$(date +%s)"

mkdir -p $OUTPUT_DIR

echo "🔍 Starting Recon on $TARGET"
echo ""

# 1. Subdomain Enumeration
echo "[*] Step 1: Subdomain Enumeration"
subfinder -d $TARGET -o $OUTPUT_DIR/subdomains.txt

# 2. HTTPX Probing
echo "[*] Step 2: Probing Subdomains"
cat $OUTPUT_DIR/subdomains.txt | httpx -o $OUTPUT_DIR/live-urls.txt

# 3. Nuclei Scanning
echo "[*] Step 3: Running Nuclei Scan"
nuclei -l $OUTPUT_DIR/live-urls.txt -o $OUTPUT_DIR/vulnerabilities.txt

# 4. Katana Crawling
echo "[*] Step 4: Web Crawling"
katana -u $TARGET -d 3 -o $OUTPUT_DIR/urls.txt

# 5. Wayback Machine
echo "[*] Step 5: Fetching Wayback URLs"
gau $TARGET | sort -u > $OUTPUT_DIR/wayback-urls.txt

echo ""
echo "✅ Recon Complete!"
echo "📁 Results saved in: $OUTPUT_DIR"
