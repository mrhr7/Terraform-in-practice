# Episode 07: Terraform State Deep Dive: Inspect, Drift and Refresh-Only

Why Terraform keeps state, what is inside terraform.tfstate, why it can contain secrets, how to inspect it safely with terraform state list, state show and show, and how to detect drift with refresh-only plans. Credential-free demo with the random and local providers.

**Exam objectives:** 2d, 6d, 7b

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep07_state
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)