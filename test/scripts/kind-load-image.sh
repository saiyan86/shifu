#!/bin/bash

IMAGE_TO_BE_LOADED=( gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0 edgehub/edgedevice-controller:v0.0.1)

for img in "${IMAGE_TO_BE_LOADED[@]}"; do
    docker pull $img
    kind load docker-image $img
done
