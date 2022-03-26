#!/bin/sh

export KUBECONFIG=.kubeconfig.yml

helm upgrade --install hello hello-world \
    --repo https://helm.sikalabs.io \
    --namespace test-github-actions --create-namespace \
    --set host=hello.ybug.dev