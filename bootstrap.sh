#!/bin/bash
set -e

# 1. Install Ansible & Dependencies
echo "Installing Ansible and Git..."
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y ansible git curl software-properties-common

# 2. Run Ansible Pull
# It will clone your repo and run local.yml
echo "Running Ansible Playbook..."
ansible-pull -U https://github.com/p3javier/ubuntu-server-configuration.git local.yml

echo "------------------------------------------------"
echo "Setup Complete!"
echo "You can now login as: ssh ragnexus@YOUR_IP"
echo "------------------------------------------------"