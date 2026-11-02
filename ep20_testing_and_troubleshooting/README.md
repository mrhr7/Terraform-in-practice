# Episode 20: Terraform Test and TF_LOG: Testing and Troubleshooting Your Code

Write automated tests for a Terraform module with the terraform test command. Covers .tftest.hcl files, run blocks with plan and apply, assert, expect_failures, and mocked providers. Then switch on verbose logging with TF_LOG and TF_LOG_PATH to troubleshoot, plus a senior-engineer tip on running plans in pull requests. Credential-free demo with the random and local providers.

**Exam objectives:** 7c, 4g

## Files

- [`main.tf`](./main.tf)
- [`outputs.tf`](./outputs.tf)
- [`terraform.tf`](./terraform.tf)
- [`variables.tf`](./variables.tf)

## Quick Start

```bash
cd ep20_testing_and_troubleshooting
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devopsinpractice473)