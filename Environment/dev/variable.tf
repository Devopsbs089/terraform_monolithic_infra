variable "rgs" {
  type = map(object({
    name = string
    location= string
    tags= map(string)
  }))
}

variable "storage_accounts" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_kind             = string
    account_tier             = string
    account_replication_type = string
    access_tier              = string

    https_traffic_only_enabled    = bool
    min_tls_version               = string
    public_network_access_enabled = bool

    network_rules = object({
      default_action = string
      ip_rules       = list(string)
      subnet_ids     = list(string)
    })

    tags = map(string)
  }))
}
