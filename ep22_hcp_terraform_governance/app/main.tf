# Downstream "workspace": reads the network's outputs from its state.
data "terraform_remote_state" "network" {
  backend = "local"

  config = {
    path = "../network/terraform.tfstate"
  }
}

resource "local_file" "app_config" {
  filename = "${path.module}/app.conf"
  content  = "network=${data.terraform_remote_state.network.outputs.network_name}\n"
}
