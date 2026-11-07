# Episode 24: Troubleshooting Terraform: Read the Error, Then Search Like a Pro

The first episode of the troubleshooting block. A repeatable method for any Terraform error: classify it (language, state, core or provider), read its anatomy (summary, location, detail), collect the facts, then search the right places in the right order: official docs and upgrade guides, the provider's GitHub issues, hashicorp/terraform issues, HashiCorp Discuss and Stack Overflow. Searches run live from the terminal with two small helper scripts that call the public Stack Exchange and GitHub APIs. Covers judging an answer (accepted is not always best) and writing a question or bug report that gets answered.

**Exam objectives:** 7c

## Files

- [`gh-issues.sh`](./gh-issues.sh)
- [`so-search.sh`](./so-search.sh)
- [`terraform.tf`](./terraform.tf)

## Quick Start

Search Stack Overflow and GitHub issues from the terminal (needs `curl` and `jq`):

```bash
cd ep24_troubleshooting_method
bash so-search.sh "Error acquiring the state lock"
bash gh-issues.sh hashicorp/terraform "force-unlock"
```

Then create the episode's broken `main.tf` (a `local_file` with `file_name` instead of `filename`) and read the error:

```bash
terraform init
terraform validate
terraform validate -json | jq -r '.diagnostics[].summary'
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devops_in_practice_pro)