# CrowdNode Frontend - Docker Setup Guide

This repository contains the frontend infrastructure for the CrowChain Equity platform. It uses **Docker** for containerization and a **Makefile** to simplify environment management.

---

## 🛠️ Prerequisites

Ensure you have the following installed on your machine:

- **Docker** & **Docker Compose** [download here](https://docs.docker.com/get-started/get-docker/)
- **Make** (standard on Linux/macOS; for Windows, use WSL or Git Bash)

Install [Expo Go application](https://expo.dev/go) in order to run the application on your phone.

---

## 🚀 Getting Started with Make

Use these commands to manage your containers. No need to remember long Docker strings!

### 1. Build and Start

If it's your first time or you've changed the Dockerfile or package.json:

```bash
make frontend-create
```

### 2. Run in Background

To keep the services running without hogging your terminal:

```bash
make frontend-run
```

### 3. Stop Services

To stop the containers while keeping the data intact:

```bash
make frontend-stop
```

### 4. Full Reset

To stop and remove the containers and the internal network:

```bash
make frontend-down
```
