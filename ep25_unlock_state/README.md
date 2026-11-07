# Episode 25: Unlock a Locked Terraform State: Error Acquiring the State Lock

Troubleshooting block. The most asked Terraform question, fixed live: "Error acquiring the state lock". Read the Lock Info, find out whether the lock is live or stale, and handle both. A live local lock that force-unlock cannot release ("LocalState not locked"), found with pgrep and stopped gracefully; -lock-timeout so CI waits instead of failing; and a truly stale lock on a remote (http) backend after a run is killed with kill -9, released with terraform force-unlock. Where each backend keeps its lock (S3 lockfile, DynamoDB, Azure blob lease, GCS, HCP Terraform) and how to prevent stuck locks. Answers real Stack Overflow questions.

**Exam objectives:** 6b

## Files

- [`main.tf`](./main.tf)
- [`state_server.py`](./state_server.py)
- [`terraform.tf`](./terraform.tf)
- [`remote/backend.tf`](./remote/backend.tf)
- [`remote/main.tf`](./remote/main.tf)
- [`remote/terraform.tf`](./remote/terraform.tf)

## Quick Start

**A live lock.** `main.tf` creates a `time_sleep` that takes 45 seconds, so a run holds the lock:

```bash
cd ep25_unlock_state
terraform init
terraform apply -auto-approve > apply.log 2>&1 &
sleep 3; terraform plan                  # Error acquiring the state lock
pgrep -a terraform                       # find the run that holds it
kill -INT $(pgrep -x terraform); wait    # stop it gracefully, like one Ctrl-C
terraform plan -lock-timeout=90s         # or: wait for the lock instead of failing
```

**A stale lock on a remote backend.** `state_server.py` is a tiny stand-in for a remote state service such as S3 (it needs Python 3):

```bash
python3 state_server.py &
cd remote
terraform init
terraform apply -auto-approve > apply.log 2>&1 &
sleep 3; kill -9 $!                      # the run dies and leaves its lock behind
terraform plan                           # Error acquiring the state lock
ID=$(terraform plan -no-color 2>&1 | grep -m1 'ID:' | awk '{print $NF}')
terraform force-unlock -force $ID
terraform plan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)