variable "prefix" {
  type        = string
  description = "Name prefix for the server, at most 8 characters."

  validation {
    condition     = length(var.prefix) <= 8
    error_message = "The prefix must be 8 characters or fewer."
  }
}
