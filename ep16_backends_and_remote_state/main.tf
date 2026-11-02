resource "random_pet" "app" {
  prefix = "app"
}

output "app_name" {
  value = random_pet.app.id
}