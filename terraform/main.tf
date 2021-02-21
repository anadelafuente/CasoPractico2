
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.1"
    }
  }
}

# crea un service principal y rellena los siguientes datos para autenticar
#Datos service principal creado
#provider "azurerm" {
#  features {}
#  subscription_id = "f7c730f8-37e2-4793-8e99-a9d9f13c270a" # Subscription ID
#  client_id       = "b39c1b3d-cd14-49e2-baa0-57f4a2162cfe" # appID
#  client_secret   = "Dq9YaMYxtkOYfnbzOl5FhK0-PCki.SyPeN"   # password
#  tenant_id       = "899789dc-202f-44b4-8472-a6d40f9eb440" # tenant
#}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group

resource "azurerm_resource_group" "rg" {
    name     =  "kubernetes_rg"
    location = var.location

    tags = {
        environment = "CP2"
    }

}

# Storage account
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

resource "azurerm_storage_account" "stAccount" {
    name                     = "staccountanadelafuag" 
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = azurerm_resource_group.rg.location
    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags = {
        environment = "CP2"
    }

}
