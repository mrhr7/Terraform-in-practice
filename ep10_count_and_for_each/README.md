# Episode 10: Terraform count vs for_each: Create Many Resources from One Block

Use the count and for_each meta-arguments to create several resource instances from one block. count.index, each.key and each.value, instance addresses with numbers and keys, why removing an item from a counted list reshuffles everything after it, and how for_each keeps plans stable. Credential-free demo with the local provider.

**Exam objectives:** 4b, 4e

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep10_count_and_for_each
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)