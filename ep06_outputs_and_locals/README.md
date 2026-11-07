# Episode 06: Terraform Outputs and Locals Explained

Local values for naming and reuse, and output values to expose results. Defining locals, output blocks with description and sensitive, why Terraform refuses to output secrets unless you mark them sensitive, terraform output with -raw and -json, and how one local change ripples through a plan. Credential-free demo with the random and local providers.

**Exam objectives:** 4c

## Files

- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep06_outputs_and_locals
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)