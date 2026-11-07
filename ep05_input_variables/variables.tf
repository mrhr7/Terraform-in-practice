variable "prefix" {
  type        = string
  description = "First word of the server name"
  default     = "web"
}

variable "pet_length" {
  type    = number
  default = 2
}

variable "server" {
  type = object({
    owner = string
    ports = list(number)
    tags  = optional(map(string), {})
  })
}
