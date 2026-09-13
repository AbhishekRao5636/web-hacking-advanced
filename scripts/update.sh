#!/bin/bash
# Update all tools
# Keep your arsenal fresh!

echo "🔂 Updating all tools..."
echo ""

# Update system
echo "[*] Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Update Go tools
echo "[*] Updating Go tools..."
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest
go install github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
go install github.com/ffuf/ffuf@latest

# Update Python tools
echo "[*] Updating Python tools..."
pip3 install --upgrade sqlmap
pip3 install --upgrade paramiko

# Update Git repositories
echo "[*] Updating Git repos..."
cd ~/tools
for repo in */; do
  if [ -d "$repo/.git" ]; then
    cd "$repo"
    git pull
    cd ..
  fi
done

echo ""
echo "✅ All tools updated!"
