resource "azurerm_storage_account" "this" {
  for_each = var.storage_accounts

  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location

  account_kind             = each.value.account_kind
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  access_tier                  = each.value.access_tier
  https_traffic_only_enabled   = each.value.https_traffic_only_enabled
  min_tls_version              = each.value.min_tls_version
  public_network_access_enabled = each.value.public_network_access_enabled

  network_rules {
    default_action             = each.value.network_rules.default_action
    ip_rules                   = each.value.network_rules.ip_rules
    virtual_network_subnet_ids = each.value.network_rules.subnet_ids
  }

  tags = each.value.tags
}
