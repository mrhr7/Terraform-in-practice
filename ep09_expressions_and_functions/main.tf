locals {
  env      = "dev"
  services = ["web", "api", "worker"]
  ports    = { web = 80, api = 8080 }

  servers = [
    { name = "web", cpu = 2 },
    { name = "api", cpu = 4 },
  ]
}
