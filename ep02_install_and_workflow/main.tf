resource "random_pet" "server" {
  length = 2
  prefix = "web"
}

resource "local_file" "inventory" {
  filename = "${path.module}/inventory.txt"
  content  = "server=${random_pet.server.id}\n"
}

output "server_name" {
  value = random_pet.server.id
}
