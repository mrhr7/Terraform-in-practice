terraform {
  # Which Terraform CLI versions may run this configuration.
  required_version = ">= 1.13"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.9"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.9"
    }
  }
}
