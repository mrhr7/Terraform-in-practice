# The http backend stores state on a web service, like S3 or Azure Storage would.
# Here that service is state_server.py, a tiny stand-in running on this machine.
terraform {
  backend "http" {
    address        = "http://localhost:8080/state"
    lock_address   = "http://localhost:8080/state"
    unlock_address = "http://localhost:8080/state"
  }
}
