# Episode 03: Terraform Providers Explained: Registry, Versions and the Lock File

What Terraform providers are, how required_providers source addresses and version constraints work, what terraform init installs, why the dependency lock file matters, how to upgrade a locked provider, using several providers together, and provider aliases. Credential-free demo with the random, local and time providers.

**Exam objectives:** 2a, 2b, 2c, 3b

## Files

- [`main.tf`](./main.tf)

## Quick Start

```bash
cd ep03_providers
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devopsinpractice473)