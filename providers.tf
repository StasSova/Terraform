# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.42.0"
    }
  }
  backend "azurerm" {
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  tenant_id       = var.TARGET_TENANT_ID
  subscription_id = var.TARGET_SUBSCRIPTION_ID
  client_id       = var.SP_CLIENT_ID
  client_secret   = var.SP_SECRET
  features {}
}

