terraform {
  backend "azurerm" {               
    key      = "prod.terraform.tfstate"
    use_azuread_auth = true
    #use_oidc = true
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