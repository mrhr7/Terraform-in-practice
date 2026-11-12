variable "prefix" {
  type        = string
  description = "First word of the server name"
  default     = "web"
}

variable "server_number" {
  type    = number
  default = 1
}

variable "server" {
  type = object({
    owner = string
    ports = list(number)
    tags  = optional(map(string), {})
  })
}
