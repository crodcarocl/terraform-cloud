[![](https://img.shields.io/github/last-commit/crodcarocl/terraform-cloud)](https://github.com/crodcarocl/terraform-cloud)
[![](https://img.shields.io/github/repo-size/crodcarocl/terraform-cloud)](https://github.com/crodcarocl/terraform-cloud)

## Status

Work in progress

## What it does?

Small terraform demos and PoCs.

## Considerations

Please make sure that your workspace name is one of these:

* development
* qa
* production

## Install

Make sure that the auto.tfvars file of each environment have your desired values.

**Using terraform cloud:**

Se your working directory to development or quality on your workspace.

**Using terraform on your CLI: (Specify environment using -chdir=)**

    terraform init
    terraform apply -chdir=development/