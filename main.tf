terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.92.0"
    }
  }
}

provider "azurerm" {
 
 # Configuration options
features {
  
}
}

resource "azurerm_resource_group" "rg" {
    name = "tcs-rg"
    location = "eastus"
  
}
