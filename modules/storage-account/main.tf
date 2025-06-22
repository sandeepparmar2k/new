

resource "azurerm_virtual_network" "vnet_1" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "sub" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet_1.name
  address_prefixes     = var.address_prefixes
  service_endpoints    = var.service_endpoints
}
resource "azurerm_storage_account" "example" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name

  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  network_rules {
    default_action             = "Deny"
    virtual_network_subnet_ids = [azurerm_subnet.sub.id]
  }

  tags = var.tags
}