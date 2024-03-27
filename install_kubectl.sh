#!/bin/bash

# Download the latest version of kubectl
sudo curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"

# Make kubectl executable
sudo chmod +x ./kubectl

# Move kubectl to a directory in your PATH
sudo mv ./kubectl /usr/local/bin/kubectl

# Verify kubectl installation
kubectl version --client
