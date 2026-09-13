# 🧠 HTTP Protocol Deep Dive

> **Most Important Topic!**

---

## What is HTTP?

**HTTP = HyperText Transfer Protocol**

```
Browser sends REQUEST
    ↓
Server receives
    ↓
Server processes
    ↓
Server sends RESPONSE
    ↓
Browser displays
```

---

## HTTP Request Structure

```http
GET /search?q=hacking HTTP/1.1
Host: google.com
User-Agent: Mozilla/5.0
Cookie: session=abc123

```

### Parts:
1. **Method:** GET, POST, PUT, DELETE
2. **URL:** /path?params
3. **HTTP Version:** 1.1, 2, 3
4. **Headers:** Key-value pairs
5. **Body:** POST/PUT data (optional)

---

## HTTP Response Structure

```http
HTTP/1.1 200 OK
Content-Type: text/html
Content-Length: 1234

<html>..page content..</html>
```

### Parts:
1. **Status Code:** 200, 404, 500, etc.
2. **Status Message:** OK, Not Found, etc.
3. **Headers:** Metadata
4. **Body:** Response content

---

## Status Codes

### Success (2xx)
- 200 OK ✅
- 201 Created
- 204 No Content

### Redirect (3xx)
- 301 Moved Permanently
- 302 Found
- 304 Not Modified

### Client Error (4xx)
- 400 Bad Request
- 401 Unauthorized
- 403 Forbidden
- 404 Not Found

### Server Error (5xx)
- 500 Internal Error
- 502 Bad Gateway
- 503 Service Unavailable

---

## Methods

```
GET     - Retrieve data
POST    - Submit data
PUT     - Update data
DELETE  - Delete data
HEAD    - Like GET, no body
PATCH   - Partial update
OPTIONS - Allowed methods
```

---

## Common Headers

```
Host: domain.com
User-Agent: Browser info
Cookie: Session data
Content-Type: Data format (JSON, form, etc.)
Authorization: Auth token
Accept: Expected response type
Referer: Where request came from
```

---

## Practice with curl

```bash
# Simple GET
curl http://example.com

# See headers
curl -i http://example.com

# POST request
curl -X POST -d "user=admin&pass=123" http://target.com/login

# Custom headers
curl -H "Authorization: Bearer token123" http://target.com/api

# Follow redirects
curl -L http://target.com
```

---

✅ **This is the foundation. Master this!**