# 🚀 00 - Getting Started — Shuru Karte Hain!

**Web hacking sikhne se pehle proper setup zaroori hai!**

---

## 📚 Isme Kya Hai?

| File | Purpose | Time |
|------|---------|------|
| 01-installation.md | Tools install करो | 30 mins |
| 02-kali-setup.md | Kali Linux setup | 1 hour |
| 03-vm-setup.md | Virtual machine | 1 hour |
| 04-docker-setup.md | Docker containers | 45 mins |
| 05-tools-install.md | All tools कैसे install करें | 2 hours |
| 06-first-lab.md | पहला lab चलाओ | 1 hour |
| 07-learning-path.md | Learning roadmap | 20 mins |

---

## 🎯 Quick Start (5 Minutes)

### Option 1: Docker (Easiest) 🐳
```bash
# Clone repo
git clone https://github.com/AbhishekRao5636/web-hacking-advanced.git
cd web-hacking-advanced

# Docker install करो
docker-compose up -d

# Ready! 🎉
```

### Option 2: Manual Setup 🛠️
```bash
# Requirements:
# - Ubuntu 20.04+ या Kali Linux
# - 8GB RAM
# - 20GB Disk space

bash scripts/install.sh
```

### Option 3: Windows (WSL2) 🪟
```bash
# WSL2 install करो
wsl --install

# Ubuntu terminal खोलो
wsl

# फिर manual setup चलाओ
bash scripts/install.sh
```

---

## ✅ System Requirements

### Minimum
- CPU: 4-core (Intel/AMD)
- RAM: 8GB
- Disk: 20GB SSD
- OS: Ubuntu, Kali, Debian, या Windows (WSL2)

### Recommended
- CPU: 6-8 core
- RAM: 16GB
- Disk: 50GB SSD
- OS: Kali Linux या Ubuntu

### Ideal
- CPU: 8+ core
- RAM: 32GB
- Disk: 100GB SSD
- OS: Kali Linux (dedicated)

---

## 🗺️ Step-by-Step Path

### हफ्ता 1: Basics
```
Day 1: Setup
├─ Tools install करो
├─ VM या Docker ready करो
└─ First lab चलाओ

Day 2-3: Fundamentals
├─ HTTP protocol समझो
├─ DNS samjho
└─ Cookies & Sessions

Day 4-5: Browser Tools
├─ Browser DevTools
├─ Burp Suite सेटअप
└─ Proxy configure करो

Day 6-7: First Vulnerability
├─ SQL Injection सीखो
├─ DVWA lab में try करो
└─ Payloads generate करो
```

### हफ्ता 2-4: Core Vulnerabilities
```
Week 2: XSS + CSRF
Week 3: IDOR + Open Redirect  
Week 4: SSRF + XXE
```

### महीना 2: Advanced Topics
```
Month 2: Advanced Vulnerabilities
├─ LFI/RFI
├─ SSTI
├─ Command Injection
└─ File Upload
```

---

## 📖 Follow This Sequence

### ✅ अगर Beginner हो:
```
1. 00-getting-started (यह folder)
   ↓
2. 01-basics (HTTP, DNS, etc.)
   ↓
3. 02-recon (Information gathering)
   ↓
4. 03-vulnerabilities (Start with SQLi, XSS)
   ↓
5. 05-tools (Burp Suite)
   ↓
6. 10-labs (DVWA, Juice Shop)
```

### ⚡ अगर Intermediate हो:
```
1. 02-recon (Methodology)
   ↓
2. 03-vulnerabilities (Advanced ones)
   ↓
3. 04-advanced (API, GraphQL, etc.)
   ↓
4. 05-tools (Professional tools)
   ↓
5. 13-automation (Automation scripts)
```

### 🔥 अगर Advanced हो:
```
1. 04-advanced (Deep dive)
   ↓
2. 14-ai-hacking (AI-powered testing)
   ↓
3. 15-bug-bounty (Real hunting)
   ↓
4. 18-research (0-day hunting)
```

---

## 🛠️ Tools You'll Learn

### Beginner Level
- 🌐 Browser DevTools
- 📋 Burp Suite Community
- 🔍 curl commands
- 🎯 Basic Python scripts

### Intermediate Level
- 🔒 Burp Suite Pro
- 🧬 Nuclei
- 🌊 FFUF
- 📊 SQLMap

### Advanced Level
- 🤖 Custom exploit development
- 🔬 Code analysis tools
- 🏗️ Infrastructure testing
- 🎯 0-day hunting tools

---

## 📋 First Lab Checklist

Ye चीजें करो:

- [ ] Operating System select करो
- [ ] RAM 8GB+ check करो
- [ ] Disk space 20GB+ check करो
- [ ] Docker या Virtual Machine setup करो
- [ ] Internet connection तेज़ है confirm करो
- [ ] VPN पर हो (optional but recommended)
- [ ] Installation script चलाओ
- [ ] Burp Suite खोलो
- [ ] DVWA lab सेटअप करो
- [ ] पहला page load करो
- [ ] Burp proxy configure करो
- [ ] पहला payloads try करो

---

## ⚠️ Common Mistakes

### ❌ गलती 1: Antivirus/Firewall
```
Problem: Tools block हो रहे हैं
Solution: Antivirus whitelist करो
         या VM में use करो
```

### ❌ गलती 2: Permissions
```
Problem: "Permission Denied" error
Solution: sudo use करो
         या user permissions change करो
```

### ❌ गलती 3: Port Conflicts
```
Problem: Port already in use
Solution: Different port use करो
         या existing service kill करो
```

### ❌ गलती 4: Not Reading Docs
```
Problem: Tool काम नहीं कर रहा
Solution: README ध्यान से पढ़ो
         YouTube tutorial देखो
```

---

## 🎓 Resources

### Videos
- [Kali Linux Installation](https://youtube.com)
- [Docker Setup for Hacking](https://youtube.com)
- [Burp Suite Basics](https://youtube.com)

### Guides
- [Kali Linux Documentation](https://www.kali.org/)
- [Docker Official Docs](https://docs.docker.com/)
- [PortSwigger Academy](https://portswigger.net/)

---

## 🚀 Next Steps

```
1. ✅ 01-installation.md पढ़ो
   ↓
2. ✅ Setup करो (Docker या Manual)
   ↓
3. ✅ 01-basics/01-http-protocol.md पढ़ो
   ↓
4. ✅ HTTP commands try करो
   ↓
5. ✅ DVWA lab setup करो
   ↓
6. 🎉 Happy hacking!
```

---

## 📞 Help Needed?

- 📝 GitHub Issues: Bug report करो
- 💬 Discussions: Questions पूछो
- 📧 Email: learning@example.com
- 🌐 Discord: Community join करो

---

## ✨ Let's Begin!

> **"हर expert कभी beginner था!"**
> 
> Don't worry about perfection.
> Focus on progress! 📈
> 
> Let's get started! 🚀

---

**Next:** `01-installation.md` → Tools कैसे install करें