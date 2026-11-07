# Episode 27: Fix Terraform Plan Errors: Invalid for_each, Missing Instance Key and Cycles

Troubleshooting block. Three plan errors that fill Stack Overflow, reproduced and fixed live. "Invalid for_each argument" when keys come from values known only after apply, fixed by taking keys from configuration and values from resources (and when -target is acceptable). "Missing resource instance key" when referencing a resource that uses for_each, fixed with instance keys and for expressions. And "Error: Cycle", two resources that depend on each other, broken with locals, plus the AWS security group version of the same problem. Credential-free demo with the random and local providers.

**Exam objectives:** 4b, 4e, 4f

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)
- [`cycle/main.tf`](./cycle/main.tf)
- [`cycle/terraform.tf`](./cycle/terraform.tf)

## Quick Start

These configurations fail on purpose. Reproduce each error, then apply the fix from the video.

```bash
cd ep27_plan_errors
terraform init
terraform plan          # Error: Invalid for_each argument
```

Fix: take the keys from configuration (a `servers` variable with `["web", "api"]`), use `for_each = toset(var.servers)` for `random_pet`, and `for_each = random_pet.server` for `local_file`.

```bash
cd cycle
terraform init
terraform validate      # Error: Cycle
```

Fix: move both file names into `locals` and reference the locals instead of each other.

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)