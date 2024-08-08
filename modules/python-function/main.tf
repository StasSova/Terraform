# Azure Function App
resource "azurerm_function_app" "python_function_app" {
  name                       = var.function_app_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = azurerm_app_service_plan.python_function_asp.id
  storage_account_name       = azurerm_storage_account.python_fc_storage.name
  storage_account_access_key = azurerm_storage_account.python_fc_storage.primary_access_key
  version                    = "~4"

  site_config {
    linux_fx_version = "PYTHON|3.8"
  }

  tags       = var.tags
  depends_on = [azurerm_storage_account.python_fc_storage]
}

# Azure App Service Plan
resource "azurerm_app_service_plan" "python_function_asp" {
  name                = var.asp_fc_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "FunctionApp"
  reserved            = true

  sku {
    tier = "Dynamic"
    size = "Y1"
  }

  tags = var.tags
}

# Azure Storage Account
resource "azurerm_storage_account" "python_fc_storage" {
  name                     = var.fc_storage_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}