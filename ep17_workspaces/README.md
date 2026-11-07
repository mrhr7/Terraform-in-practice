# Episode 17: Terraform CLI Workspaces: One Configuration, Many States

Terraform CLI workspaces: the default workspace, creating, listing, selecting and deleting workspaces, using terraform.workspace in expressions, where the local backend stores each workspace's state, the TF_WORKSPACE environment variable, and when separate directories or HCP Terraform workspaces are the better choice. Credential-free demo with the random and local providers.

**Exam objectives:** 6c, 8c

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep17_workspaces
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)