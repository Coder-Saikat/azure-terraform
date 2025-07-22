# terraform.tfvars (for prod)

# General
environment            = "prod"
location               = "East US"
resource_group_name    = "prod-resource-group"

# Sentinel module inputs
sentinel_workspace_name = "prod-sentinel-workspace"
sentinel_solution_names = ["SecurityInsights"]  # optional if used in module

# Logic App module inputs
logicapp_name          = "prod-alert-workflow"
logicapp_plan_name     = "prod-logicapp-plan"
logicapp_sku           = "S1"  # Standard tier

# Optional tags
tags = {
  environment = "prod"
  owner       = "DevOps Team"
}
