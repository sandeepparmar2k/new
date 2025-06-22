variable "rg_name" { 
  description = "The name of the resource group"
  type        = string
  default     = "rg2"   
  
}
variable "location" { 
  description = "The Azure region where the resource group will be created"
  type        = string
  default     = "West Europe" 
  
}