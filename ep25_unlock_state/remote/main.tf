# A slow "deployment", so a run holds the state lock for a while.
resource "time_sleep" "deploy" {
  create_duration = "45s"
}
