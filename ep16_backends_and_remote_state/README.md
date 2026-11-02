# Episode 16: Terraform Backends, State Locking and Remote State

Where Terraform stores state: the default local backend, the backend block, migrating state with init -migrate-state, backend configuration rules and partial configuration, state locking demonstrated with a real lock conflict, force-unlock, and reading another configuration's outputs with the terraform_remote_state data source. Pro tip: state at scale with the S3 backend and use_lockfile. Remote backends are explained on slides; the demo uses only the local backend and the random and time providers.

**Exam objectives:** 6a, 6b, 6c

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)
- [`network/main.tf`](./network/main.tf)

## Quick Start

```bash
cd ep16_backends_and_remote_state
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@DevOps-in-Practice)