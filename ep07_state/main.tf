resource "random_pet" "server" {
  length = 2
}

resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = "Hello from ${random_pet.server.id}\n"
}

output "server_name" {
  value = random_pet.server.id
}
