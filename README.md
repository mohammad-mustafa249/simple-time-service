# **SimpleTimeService**

A simple microservice that returns the current timestamp and the client's IP address in JSON format. Built using Python (Flask) and Dockerized to run securely as a non-root user.

---

## Features

- Returns current UTC timestamp in ISO 8601 format
- Returns client IP address
- Lightweight and fast
- Dockerized with **non-root** container execution for security
- Listens on localhost:8080

---

## Prerequisites

Make sure the following tools are installed:

- [Docker](https://www.docker.com/products/docker-desktop) (v20+ recommended)
- Docker Desktop
- Python 3.11+ (optional, for local testing)
- curl (for quick endpoint testing)

## Quick Start

### Clone the repository

git clone https://github.com/<your-username>/simple-time-service.git
cd simple-time-service

### Build the Docker image
docker build -t simple-time-service .

###Run the container 
docker run -p 8080:8080 simple-time-service

### Access the Service
Browser
Visit: http://localhost:8080

### CLI using curl
curl http://localhost:8080

## Sample out put 

{
 "timestamp": "2025-05-22T14:35:12.345Z",
 "ip": "172.17.0.1"
