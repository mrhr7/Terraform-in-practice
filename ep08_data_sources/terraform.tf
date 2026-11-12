terraform {
  required_version = ">= 1.13"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.9"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.4"
    }
  }
}
