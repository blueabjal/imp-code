#!/bin/bash
cd /home/ubuntu
git init
git clone https://github.com/blueabjal/imp-code.git
cd imp-code
sudo sh -x script.sh >> out.sh
sudo minikube start --vm-driver=none >> out.sh
