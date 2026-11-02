# Deliberately insecure example for security scanners. Never applied:
# it lives in its own folder, so the episode's root module ignores it.
resource "aws_security_group" "ssh" {
  name        = "allow-ssh"
  description = "SSH access"

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
