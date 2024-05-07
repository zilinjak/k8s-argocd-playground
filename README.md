# Purpose

This repository is for testing and playing with K8S and Argocd. It is intended to be able to easily initialize infrastructure on local k8s cluster - using docker desktop.

## Prerequisites
 - Installed Docker Desktop
 - Enable Kubernetes in Docker Desktop
 - Installed kubectl and helmcli
 - Switch to docker-desktop context in kubectl

```bash
# Install the chart
helm instal argo-cd argo-cd --namespace=argo-cd --create-namespace
# When required to upgrade
helm upgrade argo-cd argo-cd --namespace=argo-cd --create-namespace
```

### How was it prepared
 - Add helm repository - `helm repo add argo https://argoproj.github.io/argo-helm`
 - Extract helm for argo - `helm pull argo/argo-cd --untar`