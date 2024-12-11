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
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}