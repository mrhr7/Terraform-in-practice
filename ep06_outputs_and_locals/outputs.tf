output "app_name" {
  description = "Generated application name"
  value       = terraform_data.app_server.output
}

output "config_file" {
  value = local_file.config.filename
}
