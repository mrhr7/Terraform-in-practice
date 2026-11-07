resource "random_password" "db" {
  length  = 16
  special = false
}

output "db_password" {
  value = random_password.db.result
}
