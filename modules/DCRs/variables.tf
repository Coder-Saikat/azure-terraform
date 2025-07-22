variable "dcr_name" {
  type        = string
  description = "Name of the Data Collection Rule"
}

variable "location" {
  type        = string
  description = "Location for the DCR"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group where the DCR will be deployed"
}

variable "log_analytics_workspace_id" {
  type        = string
  description = "The full resource ID of the Log Analytics workspace to send logs to"
}

variable "tags" {
  type    = map(string)
  default = {}
}
