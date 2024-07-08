# Purpose

This repository is for testing and playing with K8S and Argocd. It is intended to be able to easily initialize infrastructure on local k8s cluster - using docker desktop.

## Prerequisites
 - Installed Docker Desktop
 - Enable Kubernetes in Docker Desktop
 - Installed kubectl and helmcli
 - Switch to docker-desktop context in kubectl


### List all argo-cd chart versions
```bash
helm search repo argo-cd/argo-cd --versions
```

### Install the chart
```bash
# Install the chart
helm install argo argo/argo-cd --namespace=argocd --create-namespace --version 7.3.3 --values argocd-values.yaml
# When required to upgrade
helm upgrade argo-cd argo-cd
```

### Configuring the argo-cd chart
See all possible values, add them to the `argocd-values.yaml` file and install the chart with the file.
```bash
helm show values argo/argo-cd
```

### Upgrade the chart
```bash
# Upgrade the chart
helm upgrade argo argo/argo-cd --namespace=argocd --version x.x.x --values argocd-values.yaml
```

### Others
```bash
# Get the password
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

# If NodePort is not set use port forwarding <SHOULD NOT BE NEEDED>
kubectl port-forward service/argo-argocd-server -n argocd 8080:443
```

### Install all our apps
```bash
## Install root sync app
```bash
helm install root-sync-app root-sync-app --create-namespace
```

### How was it prepared
 - Add helm repository - `helm repo add argo https://argoproj.github.io/argo-helm`
 - Extract helm for argo - `helm pull argo/argo-cd --untar`

# Links
  - [ArgoCD](localhost:30080/applications)
  - [Prometheus.Alertmanager](http://localhost:32395)
  - [Prometheus](http://localhost:31015)