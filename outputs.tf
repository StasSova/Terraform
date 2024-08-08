output "python_function_app_name" {
  value       = module.python_function.function_app_name
  description = "Deployed Python function app name"
}

output "powershell_function_app_name" {
  value       = module.powershell_function.function_app_name
  description = "Deployed PowerShell function app name"
}