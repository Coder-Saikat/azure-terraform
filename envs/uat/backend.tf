terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstateuatstorage"
    container_name       = "tfstate-uat"
    key                  = "uat.terraform.tfstate"
  }
}
