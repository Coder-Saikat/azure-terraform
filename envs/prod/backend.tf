# backend.tf (recommended place for this)
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-prod-rg"
    storage_account_name = "tfstateprodsa"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
