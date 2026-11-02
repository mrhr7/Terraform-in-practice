# Episode 01: What Is Terraform? Infrastructure as Code Explained

What infrastructure as code is, why teams use it, and how Terraform turns declarative configuration into real infrastructure through providers, state, and the write, plan, apply workflow. Demo: a credential-free local_file resource on a real Linux terminal, including drift detection.

**Exam objectives:** 1a, 1b, 1c, 2d, 3a

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep01_what_is_terraform
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@DevOps-in-Practice)