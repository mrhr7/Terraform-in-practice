# Episode 28: Recover from Terraform State Disasters: Deleted State, Already Exists and Safe State Surgery

Troubleshooting block finale. Real Stack Overflow questions about state, fixed live. A deleted state file: why Terraform now wants to create everything, recovery from terraform.tfstate.backup (and why it is one write behind), and from remote backend versions. Rebuilding state with import blocks, including a provider resource that cannot be imported. What to do about "already exists" errors. And safe state surgery: state pull before any change, state rm, the automatic timestamped backup, and undoing a mistake with state push, its serial safety check and -force. Credential-free demo with the random and local providers.

**Exam objectives:** 2d, 6d, 7a, 7b

## Files

- [`main.tf`](./main.tf)
- [`terraform.tf`](./terraform.tf)

## Quick Start

Simulate a lost state file, and recover it:

```bash
cd ep28_state_recovery
terraform init
terraform apply -auto-approve
sed -i 's/port=/listen_port=/' main.tf && terraform apply -auto-approve
rm terraform.tfstate
terraform plan                                   # wants to create everything: do not apply
cp terraform.tfstate.backup terraform.tfstate    # restore the backup (one write behind)
terraform plan
```

Rebuild state with an import block when no backup is left. The `seed` makes the port repeatable, so the ID is known:

```hcl
import {
  to = random_integer.port
  id = "8826,8000,8999,shop"
}
```

Safe state surgery, with an undo:

```bash
terraform state pull > before-surgery.tfstate
terraform state rm local_file.app
terraform state push -force before-surgery.tfstate
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)