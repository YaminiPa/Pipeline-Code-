terraform {
  
  backend "azurerm" {
    resource_group_name  = "example-resources1"
    storage_account_name = "tfstateexample1"
    container_name       = "tfstate"
    key                  = "classicpipelinecode.terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}




provider "azurerm" {
  features {}
  subscription_id = "b397c2d0-369a-47dd-9100-9467b7447185"
}





resource "azurerm_resource_group" "example" {
  name     = "example-resources11"
  location = "West Europe"
}

resource "azurerm_resource_group" "example1" {
  name     = "example-resources21"
  location = "West Europe"
}

resource "azurerm_storage_account" "stg" {
  name                     = "tfstateexample1"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}