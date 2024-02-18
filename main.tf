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

resource "azurerm_virtual_network" "vnet" {
    name = "tcs-vnet"
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    address_space = [ "10.0.0.0/16" ]
  
}

// hello this is for testing
