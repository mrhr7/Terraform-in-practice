# Episode 08: Terraform Data Sources Explained

Data sources let Terraform read information it does not manage. The difference between data and resource blocks, reading and decoding a jason settings file with the local_file data source, data sources in state, how external changes flow into a plan, data sources that depend on managed resources and are read during apply, and what happens when a data source cannot find its target. Credential-free demo with the local, random and tls providers.

**Exam objectives:** 4a

## Files

- [`config.json`](./config.json)
- [`terraform.tf`](./terraform.tf)

## Quick Start

```bash
cd ep08_data_sources
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

---
[Back to series index](../README.md) | [Watch the video](https://youtube.com/@devopsinpractice473)