resource "random_pet" "app" {
  length = 2
}

output "app_name" {
  value = random_pet.app.id
}
