terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-eastus"  
    storage_account_name = "cs21003200129b14f66"
    container_name       = "tfstate"                       
    key                  = "prod.terraform.tfstate"
    use_azuread_auth = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}

  client_id = "3c61b2f3-9809-4b4e-b7de-b89836b7bb73"
  client_secret = "DHm8Q~WrgvieEN9CkTvAxcHj4k1lwTD9AiQJEcpk"
  tenant_id = "4b497271-d1e9-49b7-bea2-070105eed6ab"
  subscription_id = "bc01f5a7-8f79-4a1e-99df-29b855e8d965"
}