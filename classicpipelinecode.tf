terraform {
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
  name     = "example-resources1"
  location = "West Europe"
}

resource "azurerm_resource_group" "example1" {
  name     = "example-resources2"
  location = "West Europe"
}