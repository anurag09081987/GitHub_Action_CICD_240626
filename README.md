# 🚀 GitHub Actions CI/CD for Azure Infrastructure using Terraform

This repository demonstrates a complete CI/CD pipeline for deploying Azure infrastructure using **Terraform** and **GitHub Actions**.

The project automatically validates Terraform code on Pull Requests and deploys Azure resources when changes are merged into the `main` branch.

---

# 📖 Project Overview

This project automates Infrastructure as Code (IaC) deployments on Microsoft Azure.

The pipeline provisions:

* Azure Resource Group
* Azure Storage Account
* Remote Terraform Backend
* Automated CI/CD using GitHub Actions

---

# 🏗️ Solution Architecture

```text
Developer
      │
      │ Git Push / Pull Request
      ▼
GitHub Repository
      │
      ▼
GitHub Actions
      │
      ├───────────────┐
      │               │
      ▼               ▼
 CI Pipeline      CD Pipeline
(terraform       (terraform
validate/plan)     apply)
                     │
                     ▼
             Azure Subscription
                     │
      ┌──────────────┴──────────────┐
      ▼                             ▼
Resource Group               Storage Account
```

---

# ✨ Features

* Infrastructure as Code with Terraform
* GitHub Actions based CI/CD
* Azure OIDC Authentication
* Remote Terraform State
* Automatic Validation
* Automatic Deployment
* Azure Resource Group Creation
* Azure Storage Account Deployment

---

# 🛠️ Tech Stack

* Terraform
* GitHub Actions
* Microsoft Azure
* AzureRM Provider
* Azure Storage Account
* YAML

---

# 📂 Project Structure

```text
.
├── .github
│   └── workflows
│       ├── ci.yml
│       └── cd.yml
│
├── RG_SA
│   ├── main.tf
│   └── provider.tf
│
├── README.md
└── .gitignore
```

---

# 🔄 CI Pipeline

Trigger:

```text
Pull Request → main
```

Workflow Steps:

1. Checkout Source Code
2. Install Terraform
3. Azure Login using OIDC
4. Terraform Init
5. Terraform Validate
6. Terraform Plan

Purpose:

* Validate infrastructure before merge
* Detect syntax/configuration errors
* Preview infrastructure changes

---

# 🚀 CD Pipeline

Trigger:

```text
Push → main
```

Workflow Steps:

1. Checkout Repository
2. Install Terraform
3. Azure Login
4. Terraform Init
5. Terraform Apply

Purpose:

Automatically deploy infrastructure after successful merge.

---

# ☁️ Azure Resources Created

Terraform provisions:

* Azure Resource Group
* Azure Storage Account
* Additional Resource Group

Current Region:

```text
Central India
```

Storage Replication:

```text
Zone Redundant Storage (ZRS)
```

---

# 🔐 Authentication

The pipeline authenticates using GitHub Actions OpenID Connect (OIDC).

Required GitHub Secrets:

* AZURE_CLIENT_ID
* AZURE_TENANT_ID
* AZURE_SUBSCRIPTION_ID

---

# 🗄️ Remote Terraform Backend

Terraform state is stored in Azure Storage Account.

Benefits:

* Shared state
* Team collaboration
* State locking
* Centralized management

---

# ▶️ Run Locally

Clone the repository

```bash
git clone https://github.com/anurag09081987/GitHub_Action_CICD_240626.git
```

Move to the project directory

```bash
cd GitHub_Action_CICD_240626
```

Initialize Terraform

```bash
terraform init
```

Validate

```bash
terraform validate
```

Preview

```bash
terraform plan
```

Deploy

```bash
terraform apply
```

---

# 📈 Future Enhancements

* Deploy Azure Virtual Network
* Deploy Network Security Groups
* Deploy Virtual Machines
* Integrate Azure Key Vault
* Add terraform fmt check
* Integrate tfsec security scanning
* Integrate Checkov policy scanning
* Manual approval for Production
* Multi-environment deployment (Dev/Test/Prod)

---

# 👨‍💻 Author

**Anurag Chauhan**

Azure | Terraform | GitHub Actions | DevOps Engineer

---

⭐ If you found this project useful, consider giving it a Star.
