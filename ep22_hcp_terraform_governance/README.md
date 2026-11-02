# Episode 22: HCP Terraform for Teams: Projects, Variable Sets, Run Triggers and Policy

The collaboration and governance side of HCP Terraform: organizing workspaces into projects, team permissions, variable sets, run triggers between workspaces, the private registry, policy as code with Sentinel, OPA and Terraform policy, health assessments for drift and continuous validation, explorer, change requests, and dynamic provider credentials, plus a pro tip on tagging conventions. The offline terminal demo links two local configurations through terraform_remote_state to show the problem run triggers solve. No HCP account is needed.

**Exam objectives:** 8b, 8c

## Files

- [`org-layout.txt`](./org-layout.txt)
- [`app/main.tf`](./app/main.tf)
- [`app/terraform.tf`](./app/terraform.tf)
- [`network/main.tf`](./network/main.tf)
- [`network/terraform.tf`](./network/terraform.tf)

## Quick Start

```bash
cd ep22_hcp_terraform_governance
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@DevOps-in-Practice)