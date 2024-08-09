# Azure Logic App
variable "logic_app_name" {
  type        = string
  description = "The name of the Azure Function App for Python"
}

variable "location" {
  type        = string
  description = "The Azure region to deploy resources into"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resources"
}

# Azure App Service Plan
variable "asp_la_name" {
  type        = string
  description = "The name of the App Service Plan for the Function App"
}

# Azure Storage Account
variable "storage_account_name" {
  type        = string
  description = "The name of the Storage Account for the Function App"
}