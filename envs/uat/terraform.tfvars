# terraform.tfvars (for uat)

# General
environment            = "uat"
location               = "East US"
resource_group_name    = "uat-resource-group"

# Sentinel module inputs
sentinel_workspace_name = "uat-sentinel-workspace"
sentinel_solution_names = ["SecurityInsights"]  # optional if used in module

# Logic App module inputs
logicapp_name          = "uat-alert-workflow"
logicapp_plan_name     = "uat-logicapp-plan"
logicapp_sku           = "S1"  # Standard tier

# Optional tags
tags = {
  environment = "uat"
  owner       = "DevOps Team"
}
