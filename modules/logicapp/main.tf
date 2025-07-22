resource "azurerm_logic_app_workflow" "logicapp" {
  name                = var.logicapp_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags

  identity {
    type = "SystemAssigned"
  }

  definition = {
    "$schema" = "https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowDefinition.json#"
    "contentVersion" = "1.0.0.0"
    "parameters" = {}
    "triggers" = {
      "manual" = {
        "type" = "Request"
        "kind" = "Http"
        "inputs" = {
          "schema" = {}
        }
      }
    }
    "actions" = {
      "Response" = {
        "type" = "Response"
        "kind" = "Http"
        "inputs" = {
          "statusCode" = 200
          "body" = {
            "message" = "Hello from Logic App"
          }
        }
      }
    }
  }

  parameters = {}
}
