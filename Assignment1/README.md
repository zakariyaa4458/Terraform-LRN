# Deploy WordPress on AWS with Terraform

## Overview

This project deploys a WordPress server on AWS using Terraform.

The infrastructure is fully provisioned as Infrastructure as Code (IaC), including an EC2 instance, Security Group, user data script, and useful Terraform outputs.

---

## Architecture

The deployment creates:

- EC2 Instance
- AWS Security Group
- Default AWS VPC
- Public IP Address
- WordPress installation using EC2 User Data

```
Internet
     │
     ▼
Security Group
     │
     ▼
EC2 Instance
     │
     ▼
Apache + PHP + WordPress
```

---

## Technologies Used

- Terraform
- AWS EC2
- AWS Security Groups
- Amazon Linux
- Bash
- Apache HTTP Server
- PHP
- WordPress

---

## Project Structure

```
Assignment1/
│
├── provider.tf
├── main.tf
├── variables.tf
├── output.tf
├── user_data.sh
├── terraform.tfstate
└── README.md
```

---

## What Terraform Creates

- EC2 Instance
- Security Group
- Public IP
- Public DNS

---

## Security Group Rules

### Inbound

| Port | Protocol | Purpose |
|------|----------|----------|
|22|TCP|SSH Access|
|80|TCP|HTTP (WordPress)|

### Outbound

Allow all outbound traffic.

---

## User Data

A Bash script automatically:

- Updates the server
- Installs Apache
- Installs PHP
- Downloads WordPress
- Copies WordPress into Apache's web directory
- Starts the Apache service

---

## Outputs

Terraform provides:

- EC2 Instance ID
- Public IP Address
- Public DNS
- WordPress URL

Example:

```
Outputs:

instance_dns = "ec2-xx-xx-xx-xx.eu-west-2.compute.amazonaws.com"
instance_id = "i-xxxxxxxxxxxxxxxx"
instance_ip = "xx.xx.xx.xx"
wordpress_url = "http://xx.xx.xx.xx"
```

---

## Skills Demonstrated

- Infrastructure as Code (IaC)
- Terraform Resources
- Variables
- Outputs
- AWS Provider
- Security Groups
- EC2
- User Data
- Bash Automation
- WordPress Deployment
- Cloud Infrastructure Provisioning

---

## Lessons Learnt

During this project I learned how to:

- Provision AWS infrastructure using Terraform.
- Create and configure Security Groups.
- Use Terraform variables and outputs.
- Use the default AWS VPC.
- Automate server configuration using EC2 User Data.
- Deploy a working WordPress server automatically.
- Manage AWS infrastructure through Infrastructure as Code.
