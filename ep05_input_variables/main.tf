resource "terraform_data" "web_server" {
  input = format("%s-server-%02d", var.prefix, var.server_number)
}

resource "local_file" "inventory" {
  filename = "${path.module}/inventory.txt"
  content  = <<-EOT
    name  = ${terraform_data.web_server.output}
    owner = ${var.server.owner}
    ports = ${join(", ", var.server.ports)}
    team  = ${lookup(var.server.tags, "team", "none")}
  EOT
}
