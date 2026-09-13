# 🔐 Installation Instructions

## Linux/Kali Setup

### Option 1: Automated (Recommended)
```bash
bash scripts/install.sh
```

### Option 2: Manual Setup

#### Step 1: Update System
```bash
sudo apt update && sudo apt upgrade -y
```

#### Step 2: Install Dependencies
```bash
sudo apt install -y python3 python3-pip git curl wget
```

#### Step 3: Install Go
```bash
wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
source ~/.bashrc
```

#### Step 4: Install Tools
```bash
# Recon tools
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest

# Scanning
go install github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
sudo apt install -y nmap

# Fuzzing
go install github.com/ffuf/ffuf@latest
go install github.com/OJ/gobuster/v3@latest

# Injection testing
go install github.com/projectdiscovery/dalfox/v2/cmd/dalfox@latest
```

#### Step 5: Verify Installation
```bash
subfinder --version
httpx --version
nuclei --version
nmap --version
ffuf --version
```

---

## Docker Setup (Recommended)

### Install Docker
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

### Run Container
```bash
docker-compose up -d
docker ps  # Verify
```

---

## Verify Setup

```bash
# Test tools
subfinder -h
nmap -V
ffuf -h
nuclei -h

# All working? ✅ Ready!
```

---

**Next:** Start with `02-recon/01-methodology.md`