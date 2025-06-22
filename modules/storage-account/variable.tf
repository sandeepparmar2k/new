variable "resource_group_name" {
    description = "The name of the resource group."
    type        = string
    default     = "rg_main"
  
}
variable "location" {
    description = "The location for the resource group."
    type        = string
    default     = "East US"
  
}
variable "vnet_name" {
    description = "The name of the virtual network."
    type        = string
    default     = "vnet1"
}
variable "address_space" { 
    description = "The address space for the virtual network."
    type        = list(string)
    default     = ["10.0.0.0/16"]
}
variable "subnet_name" {
    description = "The name of the subnet."
    type        = string
    default     = "subnet1" 
  
}
variable "address_prefixes" {
    description = "The address prefixes for the subnet."
    type        = list(string)
    default     = ["10.0.2.0/24"]

}
variable "service_endpoints" {
    description = "The service endpoints for the subnet."
    type        = list(string)
    default     = ["Microsoft.Sql", "Microsoft.Storage"]
  
}
variable "storage_account_name" {
    description = "The name of the storage account."
    type        = string
    default     = "storageaccountname"
  
}
variable "account_tier" {
    description = "The account tier for the storage account."
    type        = string
    default     = "Standard"
  
}
variable "account_replication_type" {
    description = "The replication type for the storage account."
    type        = string
    default     = "LRS" 
  
}
variable "ip_rules" {
    description = "The IP rules for the storage account."
    type        = list(string)
    default     = ["100.0.1"]
  
}
variable "tags" {
    description = "Tags to apply to the storage account."
    type        = map(string)
    default     = {
        environment = "staging"
    }
  
}