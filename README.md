## 🚀 Day 1 – Dockerized Flask Application

### 📌 What I Built
- A simple Flask app running inside a Docker container
- Exposed via port 5000

### 🐳 Docker Steps
```bash
docker build -t devops-cicd-app .
docker run -d -p 5000:5000 --name devops-app k8s-cicd-argocd
