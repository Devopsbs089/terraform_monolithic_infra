rgs = {
  "rg1" = {
    name= "dev01"
    location= "East US"
    tags = {
        environment = "dev"
        owner ="devops-warriers"
        project = "monolithic_HLD"
    }
 }
   "rg2" ={
    name = "dev02"
    location = "west US"
    tags = {
        environment = "dev"
        owner = "devops-warriers"
        project = "monolithic_HLD"
    }
   }
}


storage_accounts = {
  sa1 = {
    name                     = "mystorageprod123"
    resource_group_name      = "dev01"
    location                 = "Central India"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Hot"

    https_traffic_only_enabled    = true
    min_tls_version               = "TLS1_2"
    public_network_access_enabled = false

    network_rules = {
      default_action = "Deny"
      ip_rules       = ["100.0.0.1"]
      subnet_ids     = []
    }

    tags = {
      env   = "prod"
      owner = "storage-team"
    }
  }
}
