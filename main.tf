module "python_function" {
  source = "./modules/python-function"

  function_app_name   = var.python_function_app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  asp_fc_name         = var.python_asp_fc_name
  fc_storage_name     = var.python_fc_storage_name
  tags                = var.tags
}

module "powershell_function" {
  source = "./modules/powershell-function"

  function_app_name   = var.powershell_function_app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  asp_fc_name         = var.powershell_asp_fc_name
  fc_storage_name     = var.powershell_fc_storage_name
  tags                = var.tags
}