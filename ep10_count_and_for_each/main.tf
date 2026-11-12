locals {
  services = ["web", "api", "worker"]
}

resource "local_file" "svc" {
  count    = length(local.services)
  filename = "${path.module}/${local.services[count.index]}.txt"
  content  = "service=${local.services[count.index]}\n"
}
