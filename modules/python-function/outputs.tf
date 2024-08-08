output "function_app_name" {
  value       = azurerm_function_app.python_function_app.name
  description = "Deployed function app name"
}

output "fc_rg" {
  value       = azurerm_function_app.python_function_app.resource_group_name
  description = "Resource group of function"
}

output "fc_location" {
  value       = azurerm_function_app.python_function_app.location
  description = "Location of function"
}