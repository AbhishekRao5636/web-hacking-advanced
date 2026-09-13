# 🧠 01 - Basics — Foundation Is Important!

**Web hacking शुरू करने से पहले fundamentals समझना ज़रूरी है!**

---

## 📚 Isme Kya Hai?

| Topic | Importance | Time |
|-------|-----------|------|
| 01-http-protocol.md | ⭐⭐⭐⭐⭐ | 3 hours |
| 02-dns.md | ⭐⭐⭐⭐ | 2 hours |
| 03-web-architecture.md | ⭐⭐⭐⭐⭐ | 3 hours |
| 04-cookies-sessions.md | ⭐⭐⭐⭐⭐ | 2.5 hours |
| 05-same-origin-policy.md | ⭐⭐⭐⭐ | 2 hours |
| 06-http-headers.md | ⭐⭐⭐ | 1.5 hours |
| 07-https-tls.md | ⭐⭐⭐⭐ | 2.5 hours |
| 08-rest-api.md | ⭐⭐⭐⭐ | 2 hours |
| 09-graphql.md | ⭐⭐⭐ | 1.5 hours |

**Total:** ~20 hours

---

## 🎯 Why Basics Matter?

### Vulnerabilities को समझने के लिए
```
वुलनरेबिलिटी समझना
    ↑
    ├─ कैसे काम करता है?
    ├─ क्यों होता है?
    └─ कैसे exploit करें?
         ↑
         └─ Basics की जरूरत!
```

### Example
```
SQL Injection समझने के लिए:
├─ HTTP request कैसे काम करती है? ← Basics
├─ Database क्या है? ← Basics  
├─ Query कैसे execute होती है? ← Basics
└─ फिर ही injection समझ आएगा!
```

---

## 📋 Learning Objectives

इस folder को complete करने के बाद तुम:

- ✅ HTTP protocol को गहराई से समझो
- ✅ Request-Response cycle को समझो
- ✅ DNS resolution process समझो
- ✅ Client-Server architecture समझो
- ✅ Cookies और Sessions को समझो
- ✅ Same-Origin Policy को समझो
- ✅ HTTP Headers को समझो
- ✅ HTTPS/TLS को समझो
- ✅ REST APIs को समझो
- ✅ GraphQL को समझो (Advanced)

---

## 🗺️ Learning Path

### 📌 Day 1: HTTP Protocol
```
सुबह: HTTP basics
├─ Request format
├─ Response format
├─ Methods (GET, POST, etc.)
└─ Status codes

दोपहर: HTTP in practice
├─ curl से requests भेजो
├─ Burp Suite में देखो
├─ Browser DevTools देखो
└─ Examples try करो

शाम: Practice
├─ कमांड line से requests
├─ Python script लिखो
└─ Variations try करो
```

### 📌 Day 2: DNS + Architecture
```
सुबह: DNS fundamentals
├─ DNS क्या है?
├─ Name resolution कैसे होता है?
├─ DNS types (A, AAAA, CNAME, MX, etc.)
└─ nslookup से queries करो

दोपहर: Web Architecture
├─ Client-Server model
├─ Frontend-Backend
├─ Databases
└─ How it all connects

शाम: Practice
├─ DNS records check करो
├─ Architecture diagrams बनाओ
└─ Real websites का architecture समझो
```

### 📌 Day 3: Sessions + Security
```
सुबह: Cookies & Sessions
├─ Cookies कैसे काम करते हैं
├─ Session management
├─ Token-based auth
└─ Practice with Burp

दोपहर: Same-Origin Policy
├─ SOP क्या है?
├─ CORS क्या है?
├─ कब bypass हो सकता है?
└─ Cross-origin requests

शाम: HTTP Headers
├─ Important headers
├─ Security headers
├─ Debugging
└─ Examples
```

### 📌 Day 4-5: HTTPS + APIs
```
Day 4: HTTPS/TLS
├─ Encryption कैसे काम करता है
├─ SSL/TLS handshake
├─ Certificates
├─ Burp में HTTPS intercept करो
└─ Certificate pinning

Day 5: REST API + GraphQL
├─ REST API structure
├─ API authentication
├─ GraphQL basics
├─ API testing
└─ Common vulnerabilities
```

---

## 🛠️ Tools You'll Use

### Command Line
```bash
curl        # HTTP requests
wget        # Downloading
nslookup    # DNS queries
dig         # DNS deep dive
nc          # Networking
openssl     # SSL/TLS testing
```

### GUI Tools
```
Burp Suite (Community/Pro)
├─ Proxy
├─ Repeater
├─ Intruder
└─ Decoder

Browser DevTools
├─ Network tab
├─ Console
├─ Application (Cookies)
└─ Storage
```

### Python Libraries
```python
requests      # HTTP requests
urllib3       # Low-level HTTP
scapy         # Network packets
beautifulsoup # HTML parsing
requests-html # Web scraping
```

---

## 📝 Files Sequence

### ✅ Must Read (In Order)

1. **01-http-protocol.md** (MOST IMPORTANT)
   - सबसे fundamental
   - Deeply पढ़ो
   - Examples कई बार try करो

2. **03-web-architecture.md**
   - HTTP के बाद समझ आएगा
   - Diagrams देखो

3. **04-cookies-sessions.md**
   - हर vulnerability में use होता है
   - Authentication समझना ज़रूरी है

4. **02-dns.md**
   - Network knowledge के लिए
   - Recon में उपयोगी

5. **05-same-origin-policy.md**
   - XSS, CSRF को समझने के लिए
   - CORS important है

6. **06-http-headers.md**
   - Security headers important हैं
   - Vulnerabilities से बचाव

7. **07-https-tls.md**
   - Encryption को समझो
   - Burp certificate setup के लिए

8. **08-rest-api.md**
   - API vulnerabilities
   - Modern web development

9. **09-graphql.md** (Optional)
   - Advanced topic
   - Later में पढ़ सकते हो

---

## 🎓 Study Tips

### 📚 Padhai Ka Tarika
1. **पहले पढ़ो** - ध्यान से
2. **फिर experiments करो** - curl से
3. **फिर Burp में देखो** - Practically
4. **फिर नोट्स बनाओ** - Apne words में
5. **फिर practice करो** - बार-बार

### 💡 Tips
- ❌ सिर्फ पढ़ना काफी नहीं है
- ✅ Hands-on practice जरूरी है
- ✅ Commands direct terminal में run करो
- ✅ Burp proxy से request-response देखो
- ✅ YouTube पर visual examples देखो
- ✅ अगर नहीं समझ आ रहा तो दोबारा पढ़ो

---

## ✅ Checkpoint Questions

हर file के बाद ये सवाल खुद से पूछो:

1. **क्या मैं समझ गया?**
   - हां → अगले file पर जाओ
   - नहीं → फिर से पढ़ो

2. **क्या मैं explain कर सकता हूँ?**
   - हां → बहुत अच्छा!
   - नहीं → किसी को समझाने की कोशिश करो

3. **क्या मैं इसे प्रैक्टिकली करा सकता हूँ?**
   - हां → मास्टर!  
   - नहीं → अधिक practice करो

---

## 🚀 After Basics

यह folder complete करने के बाद:

```
01-basics ✅ (Complete)
    ↓
02-recon (Next)
    ↓
03-vulnerabilities (Main content)
    ↓
04-advanced (Deep topics)
```

---

## 📞 Common Questions

### Q: "क्या मुझे सब कुछ memorize करना है?"
**A:** नहीं! समझो और references रखो। जरूरत पड़ने पर खोज लो।

### Q: "कितनी जल्दी सीख जाऊँ?"
**A:** 3-5 दिन गहराई से studying के बाद confident हो जाओगे।

### Q: "अगर basics नहीं समझा तो?"
**A:** Vulnerabilities को समझना बहुत मुश्किल होगा। Time लो, धीरे-धीरे सीखो।

### Q: "Python सीखना पड़ेगा?"
**A:** फिलहाल नहीं। Basics के लिए sirf shell commands चाहिए।

---

## 🎉 Ready to Start?

> **"Foundation strong हो तो बाकी सब easy हो जाता है!"**
> 
> Basics को seriously लो! 💪
> यह सब कुछ का foundation है।

---

**Next:** `01-http-protocol.md` → सबसे important topic शुरू करते हैं!