# Terraform in Practice

**Terraform from Zero to Certified** — Companion code and hands-on exercises for the [DevOps in Practice](https://www.youtube.com/@DevOps-in-Practice) Terraform video series.

This repository contains 23 self-contained, hands-on episodes designed to take you from total beginner to passing the **HashiCorp Certified: Terraform Associate (004)** exam while learning production-grade infrastructure as code practices.

Every demo is completely credential-free, utilizing official standard providers (`local`, `random`, `null`, `time`, `tls`). You can clone this repository and follow along on any machine (Linux, macOS, Windows) without setting up or paying for cloud accounts.

---

## 📚 Episodes Index

| # | Episode Title | Code Directory | Video |
|---|---------------|----------------|-------|
| 01 | [What Is Terraform? Infrastructure as Code Explained](./ep01_what_is_terraform/) | [`ep01_what_is_terraform`](./ep01_what_is_terraform/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 02 | [Install Terraform and Master the Core Workflow](./ep02_install_and_workflow/) | [`ep02_install_and_workflow`](./ep02_install_and_workflow/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 03 | [Terraform Providers Explained: Registry, Versions and the Lock File](./ep03_providers/) | [`ep03_providers`](./ep03_providers/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 04 | [Terraform Resources, References and the Dependency Graph](./ep04_resources_and_dependencies/) | [`ep04_resources_and_dependencies`](./ep04_resources_and_dependencies/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 05 | [Terraform Input Variables and Types Explained](./ep05_input_variables/) | [`ep05_input_variables`](./ep05_input_variables/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 06 | [Terraform Outputs and Locals Explained](./ep06_outputs_and_locals/) | [`ep06_outputs_and_locals`](./ep06_outputs_and_locals/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 07 | [Terraform State Deep Dive: Inspect, Drift and Refresh-Only](./ep07_state/) | [`ep07_state`](./ep07_state/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 08 | [Terraform Data Sources Explained](./ep08_data_sources/) | [`ep08_data_sources`](./ep08_data_sources/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 09 | [Terraform Expressions and Functions with terraform console](./ep09_expressions_and_functions/) | [`ep09_expressions_and_functions`](./ep09_expressions_and_functions/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 10 | [Terraform count vs for_each: Create Many Resources from One Block](./ep10_count_and_for_each/) | [`ep10_count_and_for_each`](./ep10_count_and_for_each/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 11 | [Terraform depends_on and lifecycle: Control Order and Replacement](./ep11_depends_on_and_lifecycle/) | [`ep11_depends_on_and_lifecycle`](./ep11_depends_on_and_lifecycle/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 12 | [Terraform Custom Conditions: Validation, Preconditions, Postconditions and Checks](./ep12_custom_conditions/) | [`ep12_custom_conditions`](./ep12_custom_conditions/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 13 | [Terraform Sensitive Data: sensitive, State Secrets, Ephemeral Values and Vault](./ep13_sensitive_data/) | [`ep13_sensitive_data`](./ep13_sensitive_data/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 14 | [Using Terraform Modules: Sources, Versions and Outputs](./ep14_using_modules/) | [`ep14_using_modules`](./ep14_using_modules/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 15 | [Writing Your Own Terraform Module: Structure and Variable Scope](./ep15_writing_modules/) | [`ep15_writing_modules`](./ep15_writing_modules/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 16 | [Terraform Backends, State Locking and Remote State](./ep16_backends_and_remote_state/) | [`ep16_backends_and_remote_state`](./ep16_backends_and_remote_state/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 17 | [Terraform CLI Workspaces: One Configuration, Many States](./ep17_workspaces/) | [`ep17_workspaces`](./ep17_workspaces/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 18 | [Importing Existing Infrastructure into Terraform](./ep18_import/) | [`ep18_import`](./ep18_import/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 19 | [Refactoring Terraform Safely: moved, removed and -replace](./ep19_refactoring/) | [`ep19_refactoring`](./ep19_refactoring/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 20 | [Terraform Test and TF_LOG: Testing and Troubleshooting Your Code](./ep20_testing_and_troubleshooting/) | [`ep20_testing_and_troubleshooting`](./ep20_testing_and_troubleshooting/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 21 | [HCP Terraform Explained: Remote Runs, terraform login and the cloud Block](./ep21_hcp_terraform_workflow/) | [`ep21_hcp_terraform_workflow`](./ep21_hcp_terraform_workflow/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 22 | [HCP Terraform for Teams: Projects, Variable Sets, Run Triggers and Policy](./ep22_hcp_terraform_governance/) | [`ep22_hcp_terraform_governance`](./ep22_hcp_terraform_governance/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |
| 23 | [Terraform Associate 004 Exam Recap: Every Objective in One Episode](./ep23_exam_recap/) | [`ep23_exam_recap`](./ep23_exam_recap/) | [Watch Video](https://www.youtube.com/@DevOps-in-Practice) |

---

## 🎯 Exam Objective Coverage (004)

| Objective Area | Covered in Episodes |
|----------------|---------------------|
| **1. Understand IaC concepts & multi-cloud** (1a, 1b, 1c) | [Ep 01](./ep01_what_is_terraform/) |
| **2. Understand Terraform's purpose & providers** (2a, 2b, 2c, 2d) | [Ep 01](./ep01_what_is_terraform/), [Ep 02](./ep02_install_and_workflow/), [Ep 03](./ep03_providers/), [Ep 07](./ep07_state/) |
| **3. Understand Terraform basics & core workflow** (3a–3g) | [Ep 02](./ep02_install_and_workflow/) |
| **4. Use Terraform CLI & HCL features** (4a–4h) | [Ep 04](./ep04_resources_and_dependencies/), [Ep 05](./ep05_input_variables/), [Ep 06](./ep06_outputs_and_locals/), [Ep 08](./ep08_data_sources/), [Ep 09](./ep09_expressions_and_functions/), [Ep 10](./ep10_count_and_for_each/), [Ep 11](./ep11_depends_on_and_lifecycle/), [Ep 12](./ep12_custom_conditions/), [Ep 13](./ep13_sensitive_data/) |
| **5. Interact with Terraform modules** (5a–5d) | [Ep 14](./ep14_using_modules/), [Ep 15](./ep15_writing_modules/) |
| **6. Manage state, locking, and backends** (6a–6d) | [Ep 07](./ep07_state/), [Ep 16](./ep16_backends_and_remote_state/), [Ep 19](./ep19_refactoring/) |
| **7. Inspect and troubleshoot** (7a, 7b, 7c) | [Ep 07](./ep07_state/), [Ep 18](./ep18_import/), [Ep 20](./ep20_testing_and_troubleshooting/) |
| **8. HCP Terraform (Cloud) capabilities** (8a–8d) | [Ep 17](./ep17_workspaces/), [Ep 21](./ep21_hcp_terraform_workflow/), [Ep 22](./ep22_hcp_terraform_governance/) |
| **Complete Comprehensive Recap** | [Ep 23](./ep23_exam_recap/) |

---

## 🚀 Quick Start

1. **Clone the repository:**
   ```bash
   git clone https://github.com/mrhr7/terraform-in-practice.git
   cd terraform-in-practice
   ```

2. **Navigate into any episode:**
   ```bash
   cd ep01_what_is_terraform
   ```

3. **Initialize and run:**
   ```bash
   terraform init
   terraform plan -out=tfplan
   terraform apply tfplan
   ```

4. **Clean up when finished:**
   ```bash
   terraform destroy -auto-approve
   ```

---

## 🛠️ Recommended Tools

In addition to standard Terraform, this series explores industry-standard tools:
- [tfenv](https://github.com/tfutils/tfenv) — Terraform version management
- [tflint](https://github.com/terraform-linters/tflint) — Terraform linter for best practices & error prevention
- [Trivy](https://github.com/aquasecurity/trivy) / [checkov](https://github.com/bridgecrewio/checkov) — Infrastructure as Code security scanning
- [Infracost](https://github.com/infracost/infracost) — Cloud cost estimates directly in pull requests
- [terraform-docs](https://github.com/terraform-docs/terraform-docs) — Automated documentation generation for modules

---

## 📺 Channel & Community

Follow the complete video series on YouTube:  
👉 **[DevOps in Practice on YouTube](https://www.youtube.com/@DevOps-in-Practice)**
