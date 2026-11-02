output "names" {
  value = { for env, pet in random_pet.app : env => pet.id }
}

output "db_password" {
  value     = random_password.db.result
  sensitive = true
}
