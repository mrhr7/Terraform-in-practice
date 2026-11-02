# Episode 18: Importing Existing Infrastructure into Terraform

Bring existing objects under Terraform management. The configuration-driven import block, previewing an import in the plan, generating configuration with plan -generate-config-out, cleaning up the generated code, applying the import from a saved plan, and the older terraform import command that writes state immediately. Credential-free demo using importable random provider resources.

**Exam objectives:** 7a

## Files

- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep18_import
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@DevOps-in-Practice)