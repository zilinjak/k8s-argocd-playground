#!/bin/bash

helm install argo argo/argo-cd --namespace=argocd --create-namespace --version 7.3.3 --values argocd-values.yaml > /dev/null

helm install root-sync-app root-sync-app --create-namespace > /dev/null

echo "Password is $(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d)"

