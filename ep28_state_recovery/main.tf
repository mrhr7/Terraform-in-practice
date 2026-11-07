# The app's port. seed makes the random number repeatable for this demo.
resource "random_integer" "port" {
  min  = 8000
  max  = 8999
  seed = "shop"
}

resource "local_file" "app" {
  filename = "app.conf"
  content  = "port=${random_integer.port.result}\n"
}
