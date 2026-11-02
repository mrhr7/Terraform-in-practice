variable "envs" {
  type        = set(string)
  description = "Environments to name."
  default     = ["dev", "prod"]
}
