# 📄 09 - Nuclei Templates & Burp Extensions

**Custom scanning templates!**

---

## 🧩 Nuclei Templates

### CVEs
```
cves/
├── cve-2021-*.yaml
├── cve-2022-*.yaml
└── cve-2023-*.yaml
```

### Exposures
```
exposures/
├── sensitive-data.yaml
├── config-files.yaml
└── source-code.yaml
```

### Misconfigurations
```
misconfigurations/
├── nginx.yaml
├── apache.yaml
├── aws-s3.yaml
└── docker.yaml
```

### Custom
```
custom/
├── custom-vuln-1.yaml
├── custom-vuln-2.yaml
└── your-templates.yaml
```

---

## 🛠️ Usage

### Run Nuclei
```bash
nuclei -u http://target.com -t nuclei/
```

### Burp Extension
```
burp/
├── custom-extensions.md
└── extension-setup.md
```

---

**Automation ke liye perfect!**