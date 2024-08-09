# Azure Function App
variable "function_app_name" {
  type        = string
  description = "The name of the Azure Function App for PowerShell"
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

# Azure Function related variables
variable "asp_fc_name" {
  type        = string
  description = "The name of the App Service Plan for the PowerShell Function App"
}

# Azure Storage Account
variable "storage_account_name" {
  type        = string
  description = "The name of the Storage Account for the PowerShell Function App"
}