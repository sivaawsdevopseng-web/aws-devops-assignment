# AWS DevOps Assignment: Docker & Jenkins Automation

This repository contains a Docker-based web application stack and a Jenkins CI/CD pipeline to automate deployment, MySQL backup, and IP extraction from Nginx logs.

---

## 🛠 Project Overview

**Components:**

- **Nginx (v1.25)** – Web server  
- **PHP-FPM (v7.3)** – PHP application runtime  
- **MySQL (v8.0)** – Database  
- **phpMyAdmin** – Web-based MySQL management tool  

**Automation:**

- Jenkins Pipeline automates:
  - Cloning the repository
  - Building Docker images
  - Deploying containers via `docker-compose`
  - MySQL backup to S3
  - Extracting unique IPs from Nginx logs

---

## 📁 Directory Structure

```text
.
├── docker-compose.yml          # Docker Compose configuration
├── www/                        # PHP application code
├── nginx/                      # Nginx configuration files
├── mysql_data/                 # Persistent MySQL data
├── mysql_to_s3.sh              # MySQL backup and S3 upload script
├── extract_ips.sh              # IP extraction from Nginx logs
└── Jenkinsfile                 # CI/CD pipeline
⚡ Usage
1. Docker Setup

Build and run containers:

docker-compose build
docker-compose up -d

Verify containers:

docker ps

Access services:

Nginx: http://localhost:80
phpMyAdmin: http://localhost:8081 (root/rootpassword)
2. Jenkins Pipeline

The Jenkins pipeline performs:

Clone the repo via SSH
Build Docker images
Deploy Docker containers
Backup MySQL database to S3
Extract unique IPs from Nginx logs

Pipeline configuration includes SSH key credentials for GitHub.

3. MySQL Backup

Run the backup script manually:

bash mysql_to_s3.sh

This creates a timestamped SQL backup and uploads it to the S3 bucket: s3://siva-mysql-backups

4. Extract Unique IPs

Run IP extraction:

bash extract_ips.sh

This script fetches unique client IPs from Nginx access logs.

📦 Docker Images
Service	Image	Version
Nginx	nginx	1.25
PHP-FPM	php	7.3
MySQL	mysql	8.0
phpMyAdmin	phpmyadmin/phpmyadmin	latest
📝 Notes
Ensure Docker and Docker Compose are installed.
Configure Jenkins SSH credentials before running the pipeline.
MySQL container persists data in mysql_data/.
Nginx logs are redirected to stdout/stderr inside Docker.
📸 Screenshots

Include screenshots for:

Jenkins pipeline run showing success stages.
Docker containers running (docker ps output).
MySQL backup in S3.
Output of unique IP extraction from Nginx logs.
💻 Author

Siva Chikkala
GitHub: https://github.com/sivaawsdevopseng-web
