# Episode 11: Terraform depends_on and lifecycle: Control Order and Replacement

The depends_on meta-argument for hidden dependencies, and the lifecycle block with create_before_destroy, prevent_destroy, ignore_changes and replace_triggered_by, plus forcing a replacement with the -replace planning option. Credential-free demo with the time, random and local providers and the built-in terraform_data resource.

**Exam objectives:** 4f

## Files

- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep11_depends_on_and_lifecycle
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devopsinpractice473)