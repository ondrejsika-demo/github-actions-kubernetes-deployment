#!/bin/sh

echo $KUBECONFIG_BASE64 | base64 --decode > .kubeconfig.yml
export KUBECONFIG=.kubeconfig.yml

env
cat .kubeconfig.yml
helm upgrade --install hello hello-world \
    --repo https://helm.sikalabs.io \
    --namespace test-github-actions --create-namespace \
    --set host=hello.ybug.dev