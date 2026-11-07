resource "random_pet" "server" {
  count = 2
}

# One config file per server, keyed by the server's generated name
resource "local_file" "config" {
  for_each = toset(random_pet.server[*].id)
  filename = "${each.key}.conf"
  content  = "name=${each.key}\n"
}
