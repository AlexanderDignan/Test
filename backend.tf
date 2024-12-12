terraform {
  required_version = "~> 1.0"
  backend "azurerm" {
    key                  = "prod.terraform.tfstate"
    resource_group_name  = "cloud-shell-storage-eastus"
    storage_account_name = "cs21003200129b14f66"
    container_name       = "tfstate"
    client_id            = "d3c1075f-353d-4f24-b056-8387f299c4f6"
    tenant_id            = "4b497271-d1e9-49b7-bea2-070105eed6ab"
    #access_key           = "Pb1npJd494PbZxB69sOzCdZPpqG6BkD44R/UCWUs9AZGmvmHXgv80uaeSe0SnIEF7LkcTS+ZUOpN/z47u9b2UQ=="
    use_oidc             = true
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
  subscription_id = "bc01f5a7-8f79-4a1e-99df-29b855e8d965"
  use_oidc        = true
}