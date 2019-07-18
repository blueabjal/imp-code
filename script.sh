#!/bin/bash
cd /home/ubuntu
cd imp-code
sudo sh -x script.sh >> out.sh
sudo minikube start --vm-driver=none >> out.sh
