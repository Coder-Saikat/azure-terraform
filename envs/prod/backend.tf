terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstateuatstorage"
    container_name       = "tfstate-prod"
    key                  = "prod.terraform.tfstate"
  }
}
