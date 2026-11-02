resource "random_pet" "app" {
  for_each = var.envs
  prefix   = each.key
}

resource "random_password" "db" {
  length = 16
}

locals {
  lines = [for env, pet in random_pet.app : "${env}=${pet.id}\n"]
}

resource "local_file" "inventory" {
  filename = "${path.module}/inventory.txt"
  content  = join("", local.lines)
}
