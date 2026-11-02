resource "local_file" "notes" {
  filename = "${path.module}/NOTES.md"
  content  = "Hand-written notes. Keep me!\n"
}
