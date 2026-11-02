# A separate configuration with its own state, owned by a "network team".
terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.9"
    }
  }
}

resource "random_integer" "octet" {
  min = 10
  max = 250
}

output "subnet_cidr" {
  value = "10.0.${random_integer.octet.result}.0/24"
}