# Docker Installation Guide for Alma Linux 9

## One-liner Installation Command

To install Docker on Alma Linux 9 quickly, you can use the following one-liner command. This command will update your system, install the necessary utilities, add the Docker repository, install Docker, and start and enable the Docker service.

sudo bash -c 'dnf update -y && dnf install -y dnf-utils && dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo && dnf install -y docker-ce docker-ce-cli containerd.io && systemctl start docker && systemctl enable docker && docker run hello-world'

# Detailed Instructions

For a more detailed approach, you can use the following Bash script. This script provides step-by-step commands to update the system, add the Docker repository, install Docker, and start and enable the Docker service.

bash
Copy code
#!/bin/bash

# Updating the system packages
echo "Updating the system packages..."
sudo dnf update -y

# Adding the Docker repository
echo "Adding the Docker repository..."
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo

# Installing the Docker engine
echo "Installing the Docker engine..."
sudo dnf install -y docker-ce docker-ce-cli containerd.io

# Starting and enabling the Docker service
echo "Starting and enabling the Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

echo "Docker has been successfully installed and started."
How to Use the Script
Save the script to a file, for example, install_docker.sh.

Make the script executable:

bash
Copy code
chmod +x install_docker.sh
Run the script with root privileges:

bash
Copy code
sudo ./install_docker.sh
Verifying the Installation
After running the script or the one-liner command, you can verify that Docker is installed and running by executing:

bash
Copy code
docker run hello-world
This command will download and run a test image in a container, and print a confirmation message if Docker is installed correctly.

Conclusion
You have successfully installed Docker on Alma Linux 9. You can now start using Docker to containerize your applications. For more information on using Docker, refer to the official Docker documentation.
