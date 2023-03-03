# terraform-on-azure

Scaffold for Terraform on Azure workshop

## Setup

Make sure you have [Azure CLI](https://learn.microsoft.com/de-de/cli/azure/install-azure-cli) and [Terraform CLI](https://developer.hashicorp.com/terraform/downloads) installed on your machine.

Fill missing data in `local.tfvars`.

## How to run

Login to Azure tenant

```shell
az login --tenant <Tenant>.onmicrosoft.com
```

Execute terraform

```shell
terraform init

terraform plan --var-file local.tfvars --out out.tfplan

terraform apply out.tfplan
```

## Docs

### Terraform

<https://developer.hashicorp.com/terraform/docs>

### Azure RM provider

<https://registry.terraform.io/providers/hashicorp/azurerm/latest>

### Random provider

<https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password>