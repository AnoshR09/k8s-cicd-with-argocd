##  Day 1 – Dockerized Flask Application

###  What I Built
- A simple Flask app running inside a Docker container
- Exposed via port 5000

### 🐳 Docker Steps

docker build -t devops-cicd-app .
docker run -d -p 5000:5000 --name devops-app k8s-cicd-argocd.

##  Day 2 – DockerHub Integration

- Tagged Docker image using versioning
- Pushed image to DockerHub
- Verified public accessibility

Docker Image:
https://hub.docker.com/repository/docker/anoshdock/k8s-cicd-argocd

##  Day 3 – Kubernetes Deployment

- Set up local Kubernetes using Minikube
- Created Deployment with 2 replicas
- Exposed application using NodePort service

### Commands Used

kubectl apply -f deployment.yaml
<<<<<<< HEAD
kubectl apply -f service.yaml


## 🚀 Day 4 – Kubernetes Advanced Concepts

- Implemented readiness & liveness probes
- Enabled zero-downtime deployments
- Performed rolling updates
- Tested rollback mechanism

### Key Concepts

- Self-healing systems
- High availability
- Zero downtime deployment
=======

### ✅ Day 5 – CI Pipeline (GitHub Actions)

#### 🔄 Workflow
GitHub → Build → Tag → Push → DockerHub

#### ⚙️ Features Implemented
- Automated Docker image build on every push
- Secure login using GitHub Secrets
- Dynamic image tagging using:
  - Timestamp
  - Commit SHA
- Multiple tagging strategy:
  - `latest` → current version
  - `<timestamp>-<sha>` → unique build version

#### 🏷️ Example Tags
    
        20260501-a1b2c3d

##  Day 6 – GitOps with ArgoCD

- Installed ArgoCD in Kubernetes
- Connected GitHub repo to ArgoCD
- Enabled automatic sync
- Achieved Git-driven deployments

### Workflow

Git Push → ArgoCD Sync → Kubernetes Update.

####
