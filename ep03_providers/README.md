# Episode 03: Terraform Providers Explained: Registry, Versions and the Lock File

What Terraform providers are, how required_providers source addresses and version constraints work, what terraform init installs, why the dependency lock file matters, how to upgrade a locked provider, using several providers together, and provider aliases. Credential-free demo with the random, local and time providers.

**Exam objectives:** 2a, 2b, 2c, 3b

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)

## Quick Start

These files are where the episode starts: `terraform.tf` has only the `random` provider, pinned to `~> 3.8.0`. Follow along with the video to upgrade it and then add the `local` and `time` providers:

```bash
cd ep03_providers
terraform init

# Upgrading a provider: raise the constraint, then upgrade (plain init refuses, the lock file still pins 3.8)
sed -i 's/~> 3.8.0/~> 3.9/' terraform.tf    # macOS: sed -i '' ...
terraform init -upgrade

# Multiple providers: add local and time
cat > terraform.tf <<'EOT'
terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.9"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.9"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.14"
    }
  }
}
EOT

cat > main.tf <<'EOT'
resource "random_pet" "server" {
  length = 2
}

resource "time_static" "created" {}

resource "local_file" "inventory" {
  filename = "${path.module}/inventory.txt"
  content  = "${random_pet.server.id} since ${time_static.created.rfc3339}\n"
}
EOT

terraform init
terraform providers
terraform plan -out=tfplan
terraform apply tfplan
cat inventory.txt
```

On Windows PowerShell, make the same edits in an editor instead of using `sed` and `cat`.

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)