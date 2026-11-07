output "app_name" {
  description = "Generated application name"
  value       = random_pet.app.id
}

output "config_file" {
  value = local_file.config.filename
}
