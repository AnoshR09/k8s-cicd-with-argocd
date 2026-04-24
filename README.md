##  Day 1 – Dockerized Flask Application

###  What I Built
- A simple Flask app running inside a Docker container
- Exposed via port 5000

### 🐳 Docker Steps
```bash
docker build -t devops-cicd-app .
docker run -d -p 5000:5000 --name devops-app k8s-cicd-argocd

##  Day 2 – DockerHub Integration

- Tagged Docker image using versioning
- Pushed image to DockerHub
- Verified public accessibility

Docker Image:
https://hub.docker.com/repository/docker/anoshdock/k8s-cicd-argocd