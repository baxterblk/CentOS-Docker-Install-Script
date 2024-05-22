#!/bin/bash

if ! command -v docker &> /dev/null; then
    echo "Updating the system packages..."
    sudo dnf update -y

    echo "Adding the Docker repository..."
    sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo

    echo "Installing the Docker engine and docker-compose..."
    sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

    echo "Starting and enabling the Docker service..."
    sudo systemctl start docker
    sudo systemctl enable docker

    echo "Please enter your password to add your user to the docker group:"
    su -c "usermod -aG docker $USER" $USER

    echo "Verifying Docker installation..."
    sudo docker run hello-world

    echo "Docker has been successfully installed and started."
else
    echo "Docker is already installed."
fi
