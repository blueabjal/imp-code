#!/bin/bash
sudo -i
apt-get update -y &&  apt-get install -y docker.io
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/
source <(kubectl completion bash)
sudo minikube start --vm-driver=none
