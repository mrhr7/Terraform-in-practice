data "local_file" "settings" {
  filename = "${path.module}/config.json"
}

locals {
  settings = jsondecode(data.local_file.settings.content)
}

resource "terraform_data" "web_server" {
  input = "web-${local.settings.environment}-01"
}

output "owner" {
  value = local.settings.owner
}
