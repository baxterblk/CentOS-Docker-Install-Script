#!/bin/bash

if ! command -v docker &> /dev/null; then
  echo "Docker is not installed. Installing Docker..."

  # 1. Update packages
  echo "Updating system packages..."
  sudo dnf update -y

  # 2. Install required packages
  echo "Installing required packages (if not present)..."
  sudo dnf install -y dnf-plugins-core

  # 3. Add Docker repository
  echo "Adding Docker repository..."
  sudo dnf config-manager --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

  # 4. Install Docker
  echo "Installing Docker Engine and Compose..."
  sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

  # 5. Start and enable Docker service
  echo "Starting and enabling Docker service..."
  sudo systemctl start docker
  sudo systemctl enable docker

  # 6. Add the current user to the 'docker' group
  echo "Adding the current user to the 'docker' group..."
  sudo usermod -aG docker $USER

  echo ""
  echo "To allow these changes to take effect, please log out and log back in."
  echo "You can do this by either restarting your computer or by typing the following commands:"
  echo "  1. exit"
  echo "  2. <enter your username and password to log back in>"
  echo ""

  # 7. Verify Docker installation (after logging back in)
  #   echo "Verifying Docker installation..."
  #   sudo docker run hello-world
  #   echo "Docker has been successfully installed and started."
else
  echo "Docker is already installed."
fi
