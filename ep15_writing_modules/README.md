# Episode 15: Writing Your Own Terraform Module: Structure and Variable Scope

Build a reusable Terraform module from scratch: the standard file layout, provider requirements for reusable modules, input variables with descriptions and defaults, outputs as the module's public interface, calling it from the root module, and the variable scope rules that keep modules encapsulated, shown with two real validation errors. Pro tip: generate module documentation with terraform-docs. Credential-free demo with the tls and local providers.

**Exam objectives:** 5b, 5c

## Files

- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep15_writing_modules
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@DevOps-in-Practice)