module "azurerm_resource_group" {
    source = "../../Module/azurerm_resource_group"
    rgs = var.rgs
}

module "azurerm_storage_account" {
    depends_on = [module.azurerm_resource_group]
    source = "../../Module/azurerm_storage_account"
    storage_accounts = var.storage_accounts
  
}