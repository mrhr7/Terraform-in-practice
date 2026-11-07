resource "tls_private_key" "deploy" {
  algorithm = "ED25519"
}

resource "local_file" "public_key" {
  filename = "${path.module}/deploy.pub"
  content  = tls_private_key.deploy.public_key_openssh
}

resource "local_sensitive_file" "private_key" {
  filename        = "${path.module}/deploy.key"
  content         = tls_private_key.deploy.private_key_openssh
  file_permission = "0600"
}
