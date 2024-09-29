# ci-cd-kube
# CI/CD with GitHub Actions, Docker, and Kubernetes

This project demonstrates a simple CI/CD pipeline using GitHub Actions to build a Docker image, push it to GitHub Container Registry, and deploy it to a Kubernetes cluster using Minikube.

## Requirements

- Docker
- Minikube
- kubectl
- GitHub Actions

## How it works

- On every push to the `main` branch or tag creation, the pipeline triggers.
- The Docker image is built and pushed to GitHub Container Registry.
- The Kubernetes manifests are applied to deploy the app.

## Setup

1. Clone the repository.
2. Make sure you have Minikube and Docker installed.
3. Configure your secrets on GitHub (e.g., `DOCKER_PASSWORD`, `KUBECONFIG`, `GOOGLE_CHAT_WEBHOOK_URL`).

## Running locally

```bash
minikube start
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
