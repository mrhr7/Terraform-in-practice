# Upstream "workspace": owns the network and publishes its name.
resource "random_pet" "vpc" {
  prefix = "vpc"
  length = 1
}

output "network_name" {
  value = random_pet.vpc.id
}
