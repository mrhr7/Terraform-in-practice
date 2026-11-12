data "local_file" "config" {
  filename = "${path.module}/config.json"

  lifecycle {
    postcondition {
      condition     = can(jsondecode(self.content))
      error_message = "config.json must contain valid JSON."
    }
  }
}

resource "local_file" "app" {
  filename = "${path.module}/app.txt"
  content  = "env=${var.environment} replicas=${var.replicas}\n"

  lifecycle {
    precondition {
      condition     = var.environment != "prod" || var.replicas >= 2
      error_message = "Production needs at least two replicas."
    }
  }
}
