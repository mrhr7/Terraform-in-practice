# Episode 04: Terraform Resources, References and the Dependency Graph

Anatomy of a Terraform resource block, arguments versus exported attributes, resource addresses, and how references between resources create implicit dependencies that Terraform turns into a dependency graph. Demo: a tls_private_key feeding two local files, terraform graph, parallel apply order, state list and state show, change propagation, and reverse-order destroy. Credential-free with the tls and local providers.

**Exam objectives:** 4a, 4b, 4f

## Files

- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep04_resources_and_dependencies
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@DevOps-in-Practice)