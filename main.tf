locals {
  application_resource_group_name = "rg-terraform-${var.PROJECT}-${var.ENV}"

  region = var.REGION

  # Python Function App settings
  python_function_app_name    = "${var.PROJECT}-python-fc-app-${var.ENV}"
  python_asp_fc_name          = "${var.PROJECT}-python-fc-asp-${var.ENV}"
  python_storage_account_name = "tfpythonfcappstorage${var.ENV}"

  # PowerShell Function App settings
  powershell_function_app_name    = "${var.PROJECT}-ps-fc-app-${var.ENV}"
  powershell_asp_fc_name          = "${var.PROJECT}-ps-fc-asp-${var.ENV}"
  powershell_storage_account_name = "tfpsfcappstorage${var.ENV}"

  # Logic App settings
  logic_app_name                 = "${var.PROJECT}-logic-app-${var.ENV}"
  logic_app_asp_la_name          = "${var.PROJECT}-logic-asp-${var.ENV}"
  logic_app_storage_account_name = "tflogicappstorage${var.ENV}"

  tags = {
    Environment = var.ENV
    Project     = var.PROJECT
    Terraform   = "true"
  }
}


# RESOURCE GROUP
resource "azurerm_resource_group" "application_rg" {
  name     = local.application_resource_group_name
  location = local.region
  tags     = local.tags
}

#--------------------------------------------------------
#                      MODULES
#--------------------------------------------------------

# AZURE PYTHON FUNCTION APP
module "python_function" {
  source = "./modules/python-function"

  function_app_name    = local.python_function_app_name
  location             = local.region
  resource_group_name  = azurerm_resource_group.application_rg.name
  asp_fc_name          = local.python_asp_fc_name
  storage_account_name = local.python_storage_account_name
  tags                 = local.tags

  depends_on = [
    azurerm_resource_group.application_rg
  ]
}

# AZURE POWERSHELL FUNCTION APP
module "powershell_function" {
  source = "./modules/powershell-function"

  function_app_name    = local.powershell_function_app_name
  location             = local.region
  resource_group_name  = azurerm_resource_group.application_rg.name
  asp_fc_name          = local.powershell_asp_fc_name
  storage_account_name = local.powershell_storage_account_name
  tags                 = local.tags

  depends_on = [
    azurerm_resource_group.application_rg
  ]
}

# AZURE LOGIC APP
module "logic_app" {
  source = "./modules/logic-app"

  logic_app_name       = local.logic_app_name
  location             = local.region
  resource_group_name  = azurerm_resource_group.application_rg.name
  asp_la_name          = local.logic_app_asp_la_name
  storage_account_name = local.logic_app_storage_account_name
  tags                 = local.tags

  depends_on = [
    azurerm_resource_group.application_rg
  ]
}

#--------------------------------------------------------
#                      MODULES END
#--------------------------------------------------------
