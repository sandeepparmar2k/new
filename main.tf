module "resource_group_module" {
  source = "./modules/resource-group"
  rg_name = "rg_main1"
  location = "East US"
}

module "storage_account_module" {
  source = "./modules/storage-account"
  resource_group_name = module.resource_group_module.name
  location = module.resource_group_module.location1
  vnet_name = "vnet1"
  address_space = ["10.10.0.0/16"]
  subnet_name = "subnet1"
  address_prefixes = ["10.10.10.0/24"]
  service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]           
  storage_account_name = "sp00105storage"
  account_tier = "Standard" 
    account_replication_type = "LRS"
    tags = {
        environment = "staging"
    }
}