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
  description = "A map of tags to assign to the resources"
}

# Python Function App settings
variable "python_function_app_name" {
  type        = string
  description = "The name of the Azure Function App for Python"
}

variable "python_asp_fc_name" {
  type        = string
  description = "The name of the App Service Plan for the Python Function App"
}

variable "python_fc_storage_name" {
  type        = string
  description = "The name of the Storage Account for the Python Function App"
}

# PowerShell Function App settings
variable "powershell_function_app_name" {
  type        = string
  description = "The name of the Azure Function App for PowerShell"
}

variable "powershell_asp_fc_name" {
  type        = string
  description = "The name of the App Service Plan for the PowerShell Function App"
}

variable "powershell_fc_storage_name" {
  type        = string
  description = "The name of the Storage Account for the PowerShell Function App"
}