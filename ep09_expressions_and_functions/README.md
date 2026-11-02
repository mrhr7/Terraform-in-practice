# Episode 09: Terraform Expressions and Functions with terraform console

Write dynamic Terraform configuration with expressions and built-in functions. String templates, conditionals, logical operators, for expressions with filters, splat expressions, and functions like upper, join, lookup, merge, cidrsubnet, format and templatefile, all tested live in terraform console. Credential-free demo with the local provider.

**Exam objectives:** 4e

## Files

- [`main.tf`](./main.tf)
- [`motd.tftpl`](./motd.tftpl)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep09_expressions_and_functions
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devopsinpractice473)