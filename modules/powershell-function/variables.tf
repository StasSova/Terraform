# Azure Function App
variable "function_app_name" {
  type        = string
  default     = "function-app-powershell"
  description = "The name of the Azure Function App for PowerShell"
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "The Azure region to deploy resources into"
}

variable "resource_group_name" {
  type        = string
  default     = "my-resource-group"
  description = "The name of the resource group"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resources"
}

# Azure Function related variables
variable "asp_fc_name" {
  type        = string
  default     = "function-app-service-plan-powershell"
  description = "The name of the App Service Plan for the PowerShell Function App"
}

# Azure Storage Account
variable "fc_storage_name" {
  type        = string
  default     = "function-app-storage-powershell"
  description = "The name of the Storage Account for the PowerShell Function App"
}