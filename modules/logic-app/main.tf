# Logic App
resource "azurerm_logic_app_standard" "logic_app" {
  name                       = var.logic_app_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = azurerm_app_service_plan.logic_app_asp.id
  storage_account_name       = azurerm_storage_account.logic_app_storage.name
  storage_account_access_key = azurerm_storage_account.logic_app_storage.primary_access_key

  tags = var.tags
}


# Azure App Service Plan
resource "azurerm_app_service_plan" "logic_app_asp" {
  name                = var.asp_la_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "elastic"
  reserved            = true

  sku {
    tier = "WorkflowStandard"
    size = "WS1"
  }

  tags = var.tags
}


# Azure Storage Account
resource "azurerm_storage_account" "logic_app_storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}


