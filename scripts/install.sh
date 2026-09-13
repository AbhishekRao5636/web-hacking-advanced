#!/bin/bash
# Web Hacking Advanced - Installation Script
# Automatic tool setup for Linux/Kali

echo "🚀 Starting Installation..."
echo ""

# Update system
echo "�🚧 Updating system..."
sudo apt update && sudo apt upgrade -y

# Install basic tools
echo "🐧 Installing basic tools..."
sudo apt install -y curl wget git python3 python3-pip perl ruby nodejs npm

# Create directories
echo "📁 Creating directories..."
mkdir -p ~/tools
mkdir -p ~/wordlists
mkdir -p ~/payloads

# Install Go (for modern tools)
echo "🔧 Installing Go..."
wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz -O /tmp/go.tar.gz
sudo tar -C /usr/local -xzf /tmp/go.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc

# Install Recon Tools
echo "🔍 Installing Recon Tools..."
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest

# Install Scanning Tools
echo "🔍 Installing Scanning Tools..."
go install github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
sudo apt install -y nmap masscan

# Install Fuzzing Tools
echo "💋 Installing Fuzzing Tools..."
go install github.com/ffuf/ffuf@latest
go install github.com/OJ/gobuster/v3@latest

# Install Burp Suite (Community Edition)
echo "🐧 Installing Burp Suite Community..."
sudo apt install -y default-jdk
wget https://portswigger.net/burp/communitydownload -O /tmp/burp.sh
chmod +x /tmp/burp.sh

# Install Docker
echo 🐳 Installing Docker..."
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

echo ""
echo "✅ Installation Complete!"
echo "🌟 All tools are ready to use!"
echo ""
echo "Next: Run 'source ~/.bashrc' and start hacking!"
