terraform {
  required_version = ">= 1.0.1"
  required_providers {
    azurerm = {
      version = ">= 2.90"
    }
  }
}

# NOTE: Noticed an issue with getting access to Azure even after setting env.
# variables, adding it to mitigate auth issues.
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
