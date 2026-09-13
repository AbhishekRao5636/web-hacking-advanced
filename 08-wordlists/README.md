# 📊 08 - Wordlists for Fuzzing

**1000+ words per category!**

---

## 📋 Collections

```
directories.txt         - 1000+ directory names
subdomains.txt          - 500+ subdomain patterns
parameters.txt          - 300+ parameter names
usernames.txt           - 500+ common usernames
passwords.txt           - 1000+ common passwords
api-endpoints.txt       - 200+ API endpoints
file-extensions.txt     - 100+ file extensions
```

---

## 🎯 Usage

### With FFUF
```bash
ffuf -u "http://target.com/FUZZ" -w ./directories.txt
```

### With Gobuster
```bash
gobuster dir -u http://target.com -w ./directories.txt
```

### With Burp Intruder
1. Load wordlist
2. Run attack
3. Analyze results

---

## 📈 Effectiveness

- Common directories: 80% success rate
- Parameters: 60% success rate
- Subdomains: 70% success rate

---

**Fuzzing fundamentals ke liye essential!**