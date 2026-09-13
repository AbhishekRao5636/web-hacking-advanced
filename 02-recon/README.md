# 🔍 02 - Reconnaissance (Recon) — Information Gathering

**Hacking ka sabse important part! Recon bina hacking incomplete hai!**

---

## 📚 Isme Kya Hai?

| File | Purpose | Time |
|------|---------|------|
| 01-methodology.md | Recon approach | 2 hours |
| 02-subdomain-enum.md | Subdomains find karo | 2.5 hours |
| 03-port-scanning.md | Open ports dhundo | 2 hours |
| 04-url-discovery.md | Hidden URLs nikalo | 2.5 hours |
| 05-content-discovery.md | Directories find karo | 2 hours |
| 06-parameter-discovery.md | Hidden parameters | 2.5 hours |
| 07-tech-fingerprinting.md | Technology stack | 1.5 hours |
| 08-osint.md | Open source intelligence | 3 hours |
| 09-google-dorking.md | Advanced Google search | 2 hours |
| 10-shodan-censys.md | Device discovery | 2 hours |
| 11-github-recon.md | GitHub source code hunting | 2 hours |
| 12-cloud-recon.md | Cloud infrastructure | 2.5 hours |

**Total:** ~27 hours

---

## 🎯 Recon Kya Hai?

**Recon = Information gathering before actual hacking**

```
Hacker ka journey:
┌─────────────────────────────────┐
│ 1. RECON (Tum yahan ho)          │ ← 60% Time
│    ├─ Subdomains                 │
│    ├─ IPs                        │
│    ├─ Ports                      │
│    ├─ Services                   │
│    ├─ Technology                 │
│    └─ People info                │
├─────────────────────────────────┤
│ 2. Scanning & Mapping            │ ← 25% Time
│    ├─ Vulnerability scan         │
│    ├─ Config review              │
│    └─ Vulnerability database     │
├─────────────────────────────────┤
│ 3. Exploitation                  │ ← 10% Time
│    ├─ Vulnerability find         │
│    ├─ Exploit develop            │
│    └─ Access gain                │
├─────────────────────────────────┤
│ 4. Post-Exploitation             │ ← 5% Time
│    ├─ Privilege escalation       │
│    ├─ Data exfiltration          │
│    └─ Report writing             │
└─────────────────────────────────┘
```

---

## 💡 Recon Ke Fayede

### ✅ Kya Milta Hai:
1. **Target ka complete picture** - Kya test karna hai
2. **Attack surface expand** - Vulnerability finding easy
3. **Time save** - Scanning phase quick
4. **Efficiency** - Sahi place par focus
5. **Success rate** - Zyada bugs find hote hain

### 📊 Statistics:
```
Recon time spend = 50-70%
Bug finding probability = 3x high
Money earned = 5x more
```

---

## 🛠️ Recon Tools

### Manual Recon
```bash
curl              # HTTP requests
wget              # Web content download
nslookup          # DNS queries
dig               # Advanced DNS
whois             # Domain info
```

### Subdomain Enumeration
```bash
subfinder         # Passive subdomain
alexa             # Popular subdomains
wildcards         # Wildcard detection
amass             # Active + Passive
```

### Port Scanning
```bash
nmap              # Port scanning
masscan           # Fast scanning
```

### URL Discovery
```bash
katana            # Web crawler
gau               # URLs from archives
urls              # URL collection
ffuf              # Fuzzing
```

### Tech Fingerprinting
```bash
wafw00f           # WAF detection
whatweb           # Technology detection
builtwith         # Technology stack
```

### OSINT
```bash
shodan            # Device search
cenesys           # Internet scanning
whoisxml          # Domain intelligence
```

---

## 📋 Recon Methodology

### Phase 1: Passive Information Gathering
```
✓ Public sources se info
✓ No direct contact
✓ Safe (no detection risk)
✓ Time zyada lagta hai

Techniques:
- Google Dorking
- Social Media
- GitHub Search
- OSINT databases
- Archive.org
```

### Phase 2: Active Scanning
```
✓ Direct connection
✓ Target ko pata chal sakta hai
✓ Faster results
✓ Risk thoda zyada

Techniques:
- Port scanning (nmap)
- DNS enumeration
- Web crawling
- Service fingerprinting
```

### Phase 3: Vulnerability Identification
```
✓ Services mein vulnerability find
✓ Weak configurations
✓ Outdated software
✓ Security misconfigurations
```

---

## 🎯 Learning Path

### Week 1: Manual Recon
```
Day 1-2: Google Dorking
├─ Basic operators
├─ Advanced queries
├─ Real examples
└─ Practice queries

Day 3-4: Public Databases
├─ DNS records
├─ WHOIS info
├─ SSL certificates
└─ Shodan/Censys

Day 5-7: Manual Testing
├─ Browser DevTools
├─ curl commands
├─ nslookup/dig
└─ OSINT frameworks
```

### Week 2: Automated Tools
```
Day 1-2: Subdomain Enumeration
├─ Subfinder
├─ Amass
├─ Wildcard detection
└─ Subdomain validation

Day 3-4: Port Scanning
├─ Nmap basics
├─ Service detection
├─ Version fingerprinting
└─ Fast scanning (masscan)

Day 5-7: URL Discovery
├─ Katana (crawling)
├─ FFUF (fuzzing)
├─ Wayback machine
└─ URL validation
```

### Week 3: Advanced Recon
```
Day 1-2: Tech Fingerprinting
├─ Waf detection
├─ Technology stack
├─ Framework identification
└─ CMS detection

Day 3-4: OSINT Deep Dive
├─ GitHub recon
├─ Employee info
├─ Email discovery
└─ Sensitive data

Day 5-7: Integration
├─ Combine all tools
├─ Automation scripts
├─ Reporting
└─ Real target practice
```

---

## 🎬 Real Example: Google.com Recon

### Step 1: Subdomains Find
```bash
subfinder -d google.com -o subs.txt
# Output: mail.google.com, drive.google.com, ...
```

### Step 2: Port Scan
```bash
nmap -p- --top-ports 1000 google.com
# Find open ports
```

### Step 3: Tech Detection
```bash
whatweb -a 3 google.com
# Technology stack
```

### Step 4: URL Discovery
```bash
katana -u google.com -d 2
# Find all URLs
```

### Step 5: Vulnerability Assessment
```bash
nuclei -u google.com -t ../../nuclei-templates
# Scan vulnerabilities
```

---

## 📊 Recon Checklist

### Before Starting:
- [ ] Target scope define kiya
- [ ] Permission/authorization check kiya
- [ ] VPN on kiya (optional but good)
- [ ] Tools install kiye
- [ ] Workspace ready kiya

### Passive Recon:
- [ ] Domain WHOIS lookup
- [ ] DNS records collected
- [ ] Subdomains found (passive)
- [ ] Google Dorking done
- [ ] GitHub search done
- [ ] Shodan/Censys results
- [ ] Social media checked
- [ ] Archive.org crawl kiya

### Active Recon:
- [ ] Port scan complete
- [ ] Service fingerprint done
- [ ] Tech stack identified
- [ ] Web crawling done
- [ ] Parameter discovery
- [ ] URL fuzzing
- [ ] WAF detection
- [ ] Endpoint mapping

### Analysis:
- [ ] Data organized kiya
- [ ] Vulnerabilities noted
- [ ] High-risk items flag kiye
- [ ] Attack surface mapped
- [ ] Next steps plan kiye

---

## ⚠️ Important Notes

### ✅ Legal Recon:
- Bug bounty programs mein (authorized)
- Penetration test mein (with contract)
- CTF mein
- Apne systems par
- Educational labs mein

### ❌ Illegal Recon:
- Unauthorized systems par
- Bina permission
- Competition mein unfair advantage
- Data theft ke liye
- Fraud ke liye

---

## 🎓 Resources

### Videos
- [IppSec - Reconnaissance](https://youtube.com)
- [John Hammond - Recon](https://youtube.com)
- [Nahmasec - Recon for Bug Bounty](https://youtube.com)

### Tools Official Docs
- [Subfinder](https://github.com/projectdiscovery/subfinder)
- [Nmap](https://nmap.org/)
- [Katana](https://github.com/projectdiscovery/katana)
- [FFUF](https://github.com/ffuf/ffuf)

### Platforms
- [PortSwigger Academy](https://portswigger.net/) - Recon labs
- [TryHackMe](https://tryhackme.com/) - Recon rooms
- [HackTheBox](https://www.hackthebox.com/) - Target practice

---

## 📈 Recon Statistics

```
Average Recon Time: 40-60 hours per target
Subdomains Found: 100-500+ per domain
Valid URLs: 1000-10000+ per target
Vulnerabilities: 5-50 per target (after recon)
Bug Bounty Success: 70% depend on recon quality
```

---

## 🚀 Next Steps

```
01. 01-methodology.md padho (Approach samjho)
02. Tools setup karo
03. 02-subdomain-enum.md se start karo
04. Har file ke examples try karo
05. Real target par practice karo
06. Automation scripts likho
07. 03-vulnerabilities/ par jaao
```

---

## 💡 Pro Tips

1. **Automated + Manual combine karo** - Best results
2. **Multiple tools use karo** - Different results
3. **Regular updates** - New techniques aate rehte hain
4. **Notes maintain karo** - Pattern recognition
5. **Time efficient** - Tool automation bana
6. **Scope define karo** - Time save
7. **Prioritize high-risk** - Focus rakhо

---

## ✨ Remember

> **"Recon 60% of the work, but 100% of the success depends on it!"**
> 
> Better reconnaissance = Better vulnerabilities
> Better vulnerabilities = Better bounties!
> 
> Recon ko seriously lo! 🎯

---

**Next:** `01-methodology.md` → Recon methodology sikhte hain!