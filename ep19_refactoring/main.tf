resource "random_pet" "app" {
  length = 2
}

resource "local_file" "a" {
  filename = "${path.module}/app.conf"
  content  = "name=${random_pet.app.id}\n"
}
