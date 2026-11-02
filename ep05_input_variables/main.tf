resource "random_pet" "server" {
  length = var.pet_length
  prefix = var.prefix
}

resource "local_file" "inventory" {
  filename = "${path.module}/inventory.txt"
  content  = <<-EOT
    name  = ${random_pet.server.id}
    owner = ${var.server.owner}
    ports = ${join(", ", var.server.ports)}
    team  = ${lookup(var.server.tags, "team", "none")}
  EOT
}
