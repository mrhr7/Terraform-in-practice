# Episode 02: Install Terraform and Master the Core Workflow

Install the Terraform CLI the official way, with the Ubuntu install script explained line by line and run two ways (all at once with bash, and step by step with a check after each step), then walk the full core workflow on a real Linux terminal: write, fmt, init, validate, plan with a saved plan file, apply, outputs, forced replacement, and destroy. Credential-free demo using the random and local providers.

**Exam objectives:** 3a, 3b, 3c, 3d, 3e, 3f, 3g

## Files

- [`install-ubuntu.sh`](./install-ubuntu.sh)
- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)

## Quick Start

`install-ubuntu.sh` is a bash script, a text file of ordinary shell commands. On Ubuntu or Debian you can run it all at once:

```bash
cd ep02_install_and_workflow
bash install-ubuntu.sh
```

Or run it step by step: copy each numbered command from the script into your terminal, one at a time, and check the result after each step.

Then walk the core workflow:

```bash
terraform init
terraform plan -out=tfplan
terraform apply tfplan
terraform destroy -auto-approve
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devopsinpractice473)