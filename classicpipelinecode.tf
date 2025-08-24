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

resource "azrerm_resource_group" "example2" {
  name     = "example-resources31"
  location = "West Europe"
}

resource "azurerm_storage_account" "stg1" {
  name                     = "tfstateexample2"
  resource_group_name      = azurerm_resource_group.example1.name
  location                 = azurerm_resource_group.example1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_resource_group" "example3" {
  name     = "rebase"
  location = "West Europe"
}
resource "azurerm_resource_group" "example4" {
  name     = "rebase1"
  location = "West Europe"
}

resource "azurerm_resource_group" "example5" {
  name     = "rebase2"
  location = "West Europe"
}

resource "azurerm_resource_group" "example6" {
  name     = "squash"
  location = "West Europe"
}

resource "azurerm_resource_group" "example61" {
  name     = "squash11"
  location = "West Europe"
}

