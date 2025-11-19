terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "bhinfra"
    storage_account_name = "bhstorage32"
    container_name       = "bhcontainer"
    key                  = "terraform.tfstate"
}
}

provider "azurerm" {
  features {}
  subscription_id = "f430c233-b9bc-4827-87f4-5d251ff61f32"
  }
