output "logicapp_name" {
  description = "Name of the Logic App"
  value       = azurerm_logic_app_workflow.logicapp.name
}

output "logicapp_id" {
  description = "Resource ID of the Logic App"
  value       = azurerm_logic_app_workflow.logicapp.id
}

output "logicapp_url" {
  description = "Logic App trigger URL (if any)"
  value       = try(azurerm_logic_app_workflow.logicapp.access_endpoint, null)
}
