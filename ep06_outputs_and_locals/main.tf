variable "environment" {
  type    = string
  default = "dev"
}

locals {
  name_prefix = "dip-${var.environment}"
  common_tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}

resource "random_pet" "app" {
  prefix = local.name_prefix
}

resource "local_file" "config" {
  filename = "${path.module}/${local.name_prefix}.json"
  content  = jsonencode(local.common_tags)
}
