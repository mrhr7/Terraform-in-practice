# Episode 14: Using Terraform Modules: Sources, Versions and Outputs

What Terraform modules are, root versus child modules, calling the same local module twice with different inputs, what terraform init does for modules, module resource addresses, reading module outputs, and the module source types: local paths, the Terraform Registry with version constraints, and Git with ref. Credential-free demo with a local module built on the random and local providers.

**Exam objectives:** 5a, 5c, 5d

## Files

- [`sources.tf.example`](./sources.tf.example)
- [`terraform.tf`](./terraform.tf)
- [`modules/pet-file/main.tf`](./modules/pet-file/main.tf)
- [`modules/pet-file/outputs.tf`](./modules/pet-file/outputs.tf)
- [`modules/pet-file/variables.tf`](./modules/pet-file/variables.tf)

## Quick Start

```bash
cd ep14_using_modules
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)