resource "time_sleep" "wait" {
  create_duration = "5s"
}

resource "terraform_data" "after" {
  input      = "ready"
  depends_on = [time_sleep.wait]
}
