locals {
  env      = terraform.workspace
  replicas = terraform.workspace == "prod" ? 3 : 1
}

resource "random_pet" "server" {
  prefix = local.env
}

resource "local_file" "config" {
  filename = "${path.module}/${local.env}.txt"
  content  = "server=${random_pet.server.id} replicas=${local.replicas}\n"
}