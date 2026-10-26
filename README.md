# AWS Infrastructure Provisioning Using Terraform

## 📌 Overview

This project demonstrates Infrastructure as Code (IaC) by provisioning AWS networking and compute resources using Terraform.

The goal was to build a reusable and manageable AWS infrastructure setup while learning how Terraform handles resource provisioning, configuration variables, outputs, and remote state management.

## 🏗️ Architecture

The infrastructure includes:

- Amazon VPC
- Public and private subnets
- Internet Gateway (IGW)
- NAT Gateway
- Elastic IP
- Route tables and routing
- Security groups
- Amazon EC2 instance
- Amazon S3 remote backend for Terraform state

## 🛠️ Technologies Used

- **Cloud Provider:** AWS
- **Infrastructure as Code:** Terraform
- **Compute:** Amazon EC2
- **Networking:** VPC, Subnets, Internet Gateway, NAT Gateway, Elastic IP, Route Tables, Security Groups
- **State Management:** Amazon S3
- **Configuration:** Terraform variables, `terraform.tfvars`, and outputs

## ⚙️ Terraform Configuration

The project uses separate Terraform configuration files to organize infrastructure resources and settings.

| File | Purpose |
|---|---|
| `provider.tf` | Configures the AWS provider and Terraform backend, if defined in this file |
| `variables.tf` | Defines input variables |
| `terraform.tfvars` | Supplies values for the declared variables |
| `outputs.tf` | Defines outputs for selected resources |
| `main.tf` | Defines AWS resources, if resources are organized in this file |

Terraform loads configuration from all `.tf` files in the working directory, so resource definitions can be organized across multiple files.

## 🚀 Deployment Steps

### 1. Prerequisites

Install and configure:

- Terraform CLI
- AWS CLI
- An AWS account
- AWS credentials with the permissions required to create the resources

Verify your AWS identity:

```bash
aws sts get-caller-identity
```

Check the Terraform installation:

```bash
terraform version
```

### 2. Clone the Repository

```bash
git clone https://github.com/Santhosh987/terraform-aws-infrastructure.git
cd terraform-aws-infrastructure
```

### 3. Configure AWS Credentials

Configure credentials using an appropriate AWS authentication method, such as an AWS CLI profile or environment credentials.

```bash
aws configure
```

Use the AWS region and variable values expected by your Terraform configuration.

### 4. Initialize Terraform

```bash
terraform init
```

This initializes the working directory, downloads required providers, and configures the backend.

### 5. Validate the Configuration

```bash
terraform fmt -check
terraform validate
```

### 6. Review the Execution Plan

```bash
terraform plan
```

Review the proposed infrastructure changes before proceeding.

### 7. Provision the Infrastructure

```bash
terraform apply
```

Review the plan and confirm the operation when prompted.

## 🔍 Managing Infrastructure

View the current Terraform-managed resources:

```bash
terraform state list
```

Display configured outputs:

```bash
terraform output
```

Review proposed changes before applying future updates:

```bash
terraform plan
```

## 🧹 Cleanup

When the infrastructure is no longer required, remove the resources managed by this configuration:

```bash
terraform destroy
```

Review the proposed deletions before confirming.

**Cost warning:** NAT Gateways, Elastic IPs, and running EC2 instances can incur AWS charges. Check the AWS console after cleanup to confirm that billable resources are no longer running.

If an S3 bucket is used for Terraform state, do not delete it casually. Verify that the state is no longer needed and that no other infrastructure depends on it.

## 🎯 Key Learnings

- Provisioning AWS infrastructure using Terraform
- Designing VPC networking with public and private subnets
- Configuring Internet Gateway and NAT Gateway connectivity
- Managing EC2 instances and security groups
- Organizing Terraform variables and outputs
- Using an S3 backend for remote Terraform state management
- Reviewing infrastructure changes with `terraform plan` and `terraform apply`
- Understanding infrastructure cleanup and cloud cost management

## 👨‍💻 Author

**Santhosh Subramanian V**

- GitHub: [Santhosh987](https://github.com/Santhosh987)
- LinkedIn: [Santhosh Subramanian V](https://www.linkedin.com/in/santhosh-subramanian-v/)
