resource "random_pet" "server" {
  prefix = var.prefix
  length = 2
}

resource "local_file" "inventory" {
  filename = "${path.module}/inventory-${var.prefix}.txt"
  content  = "server=${random_pet.server.id}\n"
}
