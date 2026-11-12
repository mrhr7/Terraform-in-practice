resource "terraform_data" "web_server" {
  input = "web-server-01"
}

resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = "Hello from ${terraform_data.web_server.output}\n"
}

output "server_name" {
  value = terraform_data.web_server.output
}
