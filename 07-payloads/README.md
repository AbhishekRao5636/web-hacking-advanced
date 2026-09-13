# 💣 07 - Payloads Collection

**500+ copy-paste ready payloads!**

---

## 📋 Files

### Injection Payloads
```
sql-injection.txt       - 50+ SQLi payloads
command-injection.txt   - 20+ command payloads
lfi.txt                 - 25+ LFI payloads
xxe.txt                 - 25+ XXE payloads
ssti.txt                - 30+ SSTI payloads
```

### XSS Payloads
```
xss.txt                 - 40+ XSS payloads
```

### Network Payloads
```
ssrf.txt                - 30+ SSRF payloads
open-redirect.txt       - 15+ redirect payloads
```

### Authentication
```
jwt.txt                 - 20+ JWT payloads
csrf.txt                - 15+ CSRF payloads
```

### Upload & File
```
file-upload.txt         - 20+ upload bypass
```

### System Access
```
reverse-shells.txt      - 50+ reverse shells
waf-bypass.txt          - 20+ WAF bypass techniques
```

---

## 💡 Usage

### Copy-Paste
```bash
cat sql-injection.txt | head -5
# Copy and paste directly!
```

### In Burp
1. Payload file open karo
2. Intruder mein paste karo
3. Run karo

### Custom Fuzzing
```bash
ffuf -u "http://target.com?id=FUZZ" -w ./payloads/sql-injection.txt
```

---

## 📊 Total Payloads: 500+

**All tested and working!**