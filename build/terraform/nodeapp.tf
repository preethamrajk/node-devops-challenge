 terraform {
  required_version = ">= 0.11" 
 backend "azurerm" {
  storage_account_name = "__terraformstorageaccount__"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
	access_key  = "__storagekey__"  
 }
}
	provider "azurerm" {
   version = "~> 2.0"
   features {}
 }
    
 # Create a new Resource Group
 resource "azurerm_resource_group" "group" {
   name     = "platform-dev"
   location = "australiasoutheast"
 }
    
 resource "azurerm_container_group" "example" {
   name                = "containers"
   location            = azurerm_resource_group.group.location
   resource_group_name = azurerm_resource_group.group.name
   ip_address_type     = "public"
   dns_name_label      = "aci-label"
   os_type             = "Linux"
    
  container {
     name  = "frontend"
     image = "colesdevopsregistry.azurecr.io/frontend:__tag__"
     cpu   = "1.0"
     memory = "3.0"
    
     ports {
       port     = 8080
       protocol = "TCP"
     }
   }
    
   tags = {
     environment = "dev"
   }
 }
 