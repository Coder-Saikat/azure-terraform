resource "azurerm_log_analytics_workspace" "sentinel_workspace" {
  name                = var.sentinel_workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = var.tags
}

# Enable Microsoft Sentinel (called a solution in older API)
resource "azurerm_sentinel_alert_rule_template" "example" {
  # Optional: only if you want built-in alert rules.
}

resource "azurerm_log_analytics_solution" "sentinel" {
  solution_name         = "SecurityInsights"
  location              = azurerm_log_analytics_workspace.sentinel_workspace.location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = azurerm_log_analytics_workspace.sentinel_workspace.id
  workspace_name        = azurerm_log_analytics_workspace.sentinel_workspace.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/SecurityInsights"
  }

  tags = var.tags
}
