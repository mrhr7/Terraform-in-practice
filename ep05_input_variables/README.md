# Episode 05: Terraform Input Variables and Types Explained

Parameterize Terraform with input variables. Declaring variable blocks with type, default and description, primitive and complex types including objects with optional attributes, required variables, type checking, terraform.tfvars, auto.tfvars, TF_VAR_ environment variables, -var, and the full precedence order. Credential-free demo with terraform_data and the local provider.

**Exam objectives:** 4c, 4d

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)
- [`terraform.tfvars`](./terraform.tfvars)
- [`variables.tf`](./variables.tf)

## Quick Start

`server` is a required variable. `terraform.tfvars` gives it a value, so plan and apply just work:

```bash
cd ep05_input_variables
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

To see the required-variable error from the video, move the file aside first, then bring it back:

```bash
mv terraform.tfvars terraform.tfvars.off
terraform plan -input=false      # Error: No value for required variable
mv terraform.tfvars.off terraform.tfvars
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)