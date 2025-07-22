terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.70.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Load variables specific to production
variable "environment" {
  type    = string
  default = "prod"
}

variable "location" {
  type    = string
  default = "East US"
}

# Call shared module (e.g., Sentinel, Logic App, etc.)
module "sentinel" {
  source                = "../modules/sentinel"
  resource_group_name   = var.resource_group_name
  location              = var.location
  sentinel_workspace_name = var.sentinel_workspace_name
  tags                  = var.tags
}


module "logicapp" {
  source              = "../modules/logicapp"
  resource_group_name = "logicapp-prod-rg"
  location            = var.location
  environment         = var.environment
  workflow_name       = "prod-alert-workflow"
}

# You can repeat modules for other prod services
