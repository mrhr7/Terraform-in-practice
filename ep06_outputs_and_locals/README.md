# Episode 06: Terraform Outputs and Locals Explained

Local values for naming and reuse, and output values to expose results. Defining locals, output blocks with description and sensitive, why Terraform refuses to output secrets unless you mark them sensitive, terraform output with -raw and -json, and how one local change ripples through a plan. Credential-free demo with terraform_data and the random and local providers.

**Exam objectives:** 4c

## Files

- [`main.tf`](./main.tf)
- [`outputs.tf`](./outputs.tf)
- [`secrets.tf`](./secrets.tf)
- [`terraform.tf`](./terraform.tf)

## Quick Start

`secrets.tf` starts without `sensitive = true`, so the first plan stops with an error, just like in the video. Add that line to the `db_password` output, then plan and apply:

```bash
cd ep06_outputs_and_locals
terraform init
terraform plan

# In secrets.tf, add sensitive = true to the db_password output, then:
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)