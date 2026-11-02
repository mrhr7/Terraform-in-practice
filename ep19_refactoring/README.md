# Episode 19: Refactoring Terraform Safely: moved, removed and -replace

How to rename and reorganize Terraform code without destroying real infrastructure. Use moved blocks to rename a resource, removed blocks to stop managing an object while keeping it, and the -replace option to force one resource to be recreated. Also compares the older terraform state mv and state rm commands. Credential-free demo with the random and local providers.

**Exam objectives:** 6d

## Files

- [`main.tf`](./main.tf)
- [`notes.tf`](./notes.tf)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep19_refactoring
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devopsinpractice473)