# Episode 05: Terraform Input Variables and Types Explained

Parameterize Terraform with input variables. Declaring variable blocks with type, default and description, primitive and complex types including objects with optional attributes, required variables, type checking, terraform.tfvars, auto.tfvars, TF_VAR_ environment variables, -var, and the full precedence order. Credential-free demo with the random and local providers.

**Exam objectives:** 4c, 4d

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep05_input_variables
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devopsinpractice473)