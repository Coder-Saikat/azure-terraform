output "dcr_id" {
  description = "The ID of the Data Collection Rule"
  value       = azurerm_monitor_data_collection_rule.this.id
}

output "dcr_name" {
  description = "The name of the Data Collection Rule"
  value       = azurerm_monitor_data_collection_rule.this.name
}
