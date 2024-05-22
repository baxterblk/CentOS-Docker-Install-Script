# Docker Installation Script

This script is designed for CentOS-based systems to automate the installation of Docker. It checks if Docker is already installed, and if not, it proceeds with the system update, adds the Docker repository, installs Docker along with docker-compose, starts the Docker service, and adds the current user to the Docker group.

## Requirements

- CentOS or other compatible Linux distribution
- `sudo` privileges for the executing user

## Usage

1. **Download the script**: Download the script to your local machine.
2. **Make it executable**: Change the script's permissions to make it executable using the command:
   ```bash
   chmod +x install_docker.sh
