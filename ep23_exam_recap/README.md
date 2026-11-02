# Episode 23: Terraform Associate 004 Exam Recap: Every Objective in One Episode

A fast review of all eight Terraform Associate 004 objective areas: infrastructure as code, fundamentals, the core workflow, configuration, modules, state, maintenance, and HCP Terraform. Includes the facts most worth memorizing, common traps, exam logistics, a quick-fire terminal replay of the key commands in one workspace, and the senior engineer's toolkit from the series pro tips. Credential-free demo with the random and local providers.

**Exam objectives:** 1a, 1b, 1c, 2a, 2b, 2c, 2d, 3a, 3b, 3c, 3d, 3e, 3f, 3g, 4a, 4b, 4c, 4d, 4e, 4f, 4g, 4h, 5a, 5b, 5c, 5d, 6a, 6b, 6c, 6d, 7a, 7b, 7c, 8a, 8b, 8c, 8d

## Files

- [`main.tf`](./main.tf)
- [`outputs.tf`](./outputs.tf)
- [`terraform.tf`](./terraform.tf)
- [`variables.tf`](./variables.tf)

## Quick Start

```bash
cd ep23_exam_recap
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@DevOps-in-Practice)