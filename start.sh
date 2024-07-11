#!/bin/bash

helm install argo argo/argo-cd --namespace=argocd --create-namespace --version 7.3.3 --values argocd-values.yaml

helm install root-sync-app root-sync-app --create-namespace

