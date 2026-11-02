#!/usr/bin/env bash
# Install Terraform on Ubuntu/Debian from the official HashiCorp apt repository.
# Source: https://developer.hashicorp.com/terraform/install
set -euo pipefail

# 1. Trust HashiCorp's signing key
wget -O - https://apt.releases.hashicorp.com/gpg \
  | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# 2. Add the HashiCorp package repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" \
  | sudo tee /etc/apt/sources.list.d/hashicorp.list

# 3. Install
sudo apt update && sudo apt install terraform
