# Episode 02: Install Terraform and Master the Core Workflow

Install the Terraform CLI the official way, then walk the full core workflow on a real Linux terminal: write, fmt, init, validate, plan with a saved plan file, apply, outputs, forced replacement, and destroy. Credential-free demo using the random and local providers.

**Exam objectives:** 3a, 3b, 3c, 3d, 3e, 3f, 3g

## Files

- [`install-ubuntu.sh`](./install-ubuntu.sh)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep02_install_and_workflow
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@DevOps-in-Practice)