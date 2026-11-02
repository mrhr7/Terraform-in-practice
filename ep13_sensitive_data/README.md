# Episode 13: Terraform Sensitive Data: sensitive, State Secrets, Ephemeral Values and Vault

What sensitive = true really does, and what it does not. Proof that sensitive values are still stored in plain text in state, how to pass secrets through environment variables, how ephemeral resources keep generated secrets out of plan and state, write-only arguments, and where HashiCorp Vault fits. Credential-free demo with the random provider and terraform_data.

**Exam objectives:** 4h, 2d

## Files

- [`terraform.tf`](./terraform.tf)
- [`write-only.tf.example`](./write-only.tf.example)
- [`examples/insecure/main.tf`](./examples/insecure/main.tf)

## Quick Start

```bash
cd ep13_sensitive_data
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devopsinpractice473)