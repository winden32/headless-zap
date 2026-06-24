#  ZAP Automation Tool

Automated web security baseline scanning tool integrated with **OWASP ZAP** (OWASP Zed Attack Proxy) and fully containerized with **Docker**. 

This tool is designed to dynamically accept targets, perform format validations (automatically enforcing HTTPS protocols), and export vulnerability assessment reports instantly.

---

##  Features
* **Dynamic Input Handling:** Interactive CLI environment that loops until a valid target is provided.
* **Auto-Protocol Enforcement:** Automatically prepends `https://` if the target is missing a web protocol.
* **Dockerized & Portable:** Zero local dependencies required. Runs securely inside an isolated scratch environment.
* **Instant HTML Reporting:** Generates comprehensive security scan compliance reports directly into your local workspace.

---

##  How to Run (For Users)

You do **not** need the source code, `Dockerfile`, or `tarama.sh` to run this tool. It is publicly available on Docker Hub.

### 1. Create a workspace directory
Create an empty folder on your system where you want to save the scanning report (e.g., `zap-reports`).

### 2. Open your terminal inside that folder
Navigate to your folder using your preferred command line interface.

### 3. Execute the single-line command:

* **For Bash / PowerShell / Mac / Linux:**
