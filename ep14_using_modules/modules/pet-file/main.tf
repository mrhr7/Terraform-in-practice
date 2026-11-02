resource "random_pet" "this" {
  length = 2
  prefix = var.prefix
}

resource "local_file" "this" {
  filename = var.filename
  content  = "server=${random_pet.this.id}\n"
}