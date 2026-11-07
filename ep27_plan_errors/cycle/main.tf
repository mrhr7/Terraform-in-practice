# The app must know the database's file, and the database must know the app's.
resource "local_file" "app" {
  filename = "app.conf"
  content  = "database=${local_file.db.filename}\n"
}

resource "local_file" "db" {
  filename = "db.conf"
  content  = "allowed_client=${local_file.app.filename}\n"
}
