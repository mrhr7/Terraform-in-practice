# Desired state: one file, with this exact content.
resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = "Hello from DevOps in Practice!\n"
}
