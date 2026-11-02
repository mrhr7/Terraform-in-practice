output "name" {
  description = "The generated server name."
  value       = random_pet.this.id
}

output "file_path" {
  description = "Path of the file that was written."
  value       = local_file.this.filename
}