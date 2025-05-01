# Inception

A containerized web infrastructure project built with Docker and Docker Compose.  
It sets up a secure, multi-service WordPress-based website using container best practices.

## 🐳 What Is Docker?

Docker is a platform that allows you to build, run, and manage applications in containers.
A container is a lightweight, standalone, and portable executable package that includes everything needed to run a piece of software: code, runtime, libraries, system tools, and settings.

Before Docker, developers faced several recurring issues:

- Inconsistent environments → Runs the same everywhere
- Complex setup → Automates installs with Dockerfiles
- Heavy VMs → Lightweight, fast containers
- Conflicting dependencies → Isolated services
- Poor portability → Works on any system
- Difficult scaling → Easy to scale with orchestration tools

## 📦 Project Overview

This project builds a fully functional WordPress site using isolated Docker containers for each core service. It uses Docker Compose for orchestration, enabling reproducibility and modularity. The services communicate over a custom Docker network and persist data using named volumes.

## 🧱 Services and Architecture

| Service     | Role                                             |
|-------------|--------------------------------------------------|
| **Nginx**   | Acts as a reverse proxy; handles HTTPS via TLS   |
| **WordPress** | Web application powered by PHP and served by Nginx |
| **MariaDB** | SQL database for storing WordPress data          |

These services are built from custom Dockerfiles based on Debian Linux for minimal size and attack surface.

I am aware of the existance of .env file in the public repo, this project is just for showcase.

## 🔧 Setup and Usage

### 1. clone the repo

```bash
git clone https://github.com/AmineMaila/Inception.git
```

### 2. Build and Start the Stack

```bash
make
```

### 3. Stop and clean up

```bash
make down
```

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/AmineMaila/Inception/blob/main/LICENSE) file for details


