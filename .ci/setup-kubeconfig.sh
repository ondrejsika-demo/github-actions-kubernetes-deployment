#!/bin/sh

echo $KUBECONFIG_BASE64 | base64 --decode > .kubeconfig.yml
