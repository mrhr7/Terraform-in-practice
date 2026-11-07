variable "env" {
  default = "dev"
}

terraform {
  backend "local" {
    path = "state/${var.env}.tfstate"
  }
}

resource "terraform_data" "app" {
  input = "shop"
}
