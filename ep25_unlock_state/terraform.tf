terraform {
  required_version = ">= 1.13"

  required_providers {
    time = {
      source  = "hashicorp/time"
      version = "~> 0.14"
    }
  }
}
