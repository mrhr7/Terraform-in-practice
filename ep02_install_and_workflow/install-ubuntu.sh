#!/usr/bin/env bash
# Install Terraform on Ubuntu/Debian from the official HashiCorp apt repository.
# Source: https://developer.hashicorp.com/terraform/install
#
# This is a bash script: a text file of ordinary shell commands. Two ways to use it:
#   all at once:   bash install-ubuntu.sh
#   step by step:  copy each numbered command below into your terminal, one at a time
set -euo pipefail   # stop at the first command that fails

# 1. Trust HashiCorp's signing key
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# 2. Add the HashiCorp package repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

# 3. Refresh the package list and install (-y answers yes to the prompt)
sudo apt update && sudo apt install -y terraform
