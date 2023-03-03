terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.46.0"
    }
  }
  required_version = "~>1.3"
}

provider "azurerm" {
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "terraform-on-azure-${var.user}-rg"
  location = "westeurope"
}
