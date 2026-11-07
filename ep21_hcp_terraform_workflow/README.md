# Episode 21: HCP Terraform Explained: Remote Runs, terraform login and the cloud Block

What HCP Terraform adds on top of the Terraform CLI: remote state, remote runs on disposable machines, organizations and workspaces, and VCS, CLI and API workflows. Shows how the cloud block connects a working directory, what terraform login stores, how tokens work in CI, and what happens to existing local state, plus a pro tip on cost estimates in pull requests. The terminal demo runs fully offline; no HCP account is needed to follow along.

**Exam objectives:** 8a, 8d

## Files

- [`cloud.tf.example`](./cloud.tf.example)
- [`main.tf`](./main.tf)
- [`remote-workflow.txt`](./remote-workflow.txt)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep21_hcp_terraform_workflow
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)