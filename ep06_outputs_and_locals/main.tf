variable "environment" {
  type    = string
  default = "dev"
}

locals {
  name_prefix = "app-${var.environment}"
  common_tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}

resource "terraform_data" "app_server" {
  input = "${local.name_prefix}-server-01"
}

resource "local_file" "config" {
  filename = "${path.module}/${local.name_prefix}.json"
  content  = jsonencode(local.common_tags)
}
