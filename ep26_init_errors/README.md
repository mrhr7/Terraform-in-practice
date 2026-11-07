# Episode 26: Fix terraform init Errors: Provider Not Found, Lock File and Backend Config

Troubleshooting block. The errors that stop you at terraform init, reproduced and fixed live, each one answering real Stack Overflow questions and GitHub issues. "Failed to query available provider packages" for a community provider (kubectl), and why every module needs its own required_providers ("Did you intend to use alekc/kubectl?"). "Inconsistent dependency lock file" and "missing or corrupted provider plugins" when plan and apply run in different CI jobs, plus lock file checksums across platforms. "Variables not allowed" in a backend block, fixed with partial configuration, and "Backend configuration changed" with -reconfigure vs -migrate-state.

**Exam objectives:** 2a, 3b, 6a

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)
- [`backend/dev.tfbackend`](./backend/dev.tfbackend)
- [`backend/main.tf`](./backend/main.tf)
- [`backend/prod.tfbackend`](./backend/prod.tfbackend)
- [`ci/main.tf`](./ci/main.tf)
- [`ci/terraform.tf`](./ci/terraform.tf)
- [`modules/app/main.tf`](./modules/app/main.tf)

## Quick Start

These configurations fail on purpose. Reproduce each error, then apply the fix from the video.

```bash
cd ep26_init_errors
terraform init          # Failed to query available provider packages (hashicorp/kubectl)
terraform providers     # shows that module.app needs it
```

Fix: add `kubectl = { source = "alekc/kubectl", version = "~> 2.1" }` to `required_providers` in `terraform.tf` *and* in a new `modules/app/versions.tf`, then `terraform init` again.

```bash
cd ci && terraform init && cd ..         # then add the time provider to ci/terraform.tf
cd backend && terraform init             # Error: Variables not allowed
```

Fix: make the backend block empty (`backend "local" {}`) and pass the settings at init time:

```bash
terraform init -backend-config=dev.tfbackend
terraform init -reconfigure -backend-config=prod.tfbackend
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)