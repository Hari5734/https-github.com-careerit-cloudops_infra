terraform {
  backend "azurerm" {
    resource_group_name  = "tcs-rg"
    storage_account_name = "tcsstg"
    container_name       = "tcscontainer"
    key                  = "prod.terraform.tfstate"
  }
}
