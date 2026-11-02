# Episode 12: Terraform Custom Conditions: Validation, Preconditions, Postconditions and Checks

Add guard rails to Terraform configuration. Input variable validation blocks, preconditions and postconditions in the lifecycle block, and check blocks whose failed assertions produce warnings instead of errors. Learn when to use each one. Credential-free demo with the local provider and a JSON config file read through a data source.

**Exam objectives:** 4g

## Files

- [`config.json`](./config.json)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep12_custom_conditions
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devopsinpractice473)