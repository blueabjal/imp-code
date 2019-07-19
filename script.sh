#!/bin/bash
sudo apt-get update -y &&  apt-get install -y docker.io
sudo curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
sudo curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/
sudo minikube start --vm-driver=none
docker run -d -p 5000:5000 --restart=always --name registry registry:2
docker tag app:latest localhost:5000/app
docker push localhost:5000/app

