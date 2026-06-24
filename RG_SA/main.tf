resource "azurerm_resource_group" "this"{
    name = "anurag"
    location = "central india"
}
resource "azurerm_storage_account" "this"{
    name = "b18g7new13"
    resource_group_name = azurerm_resource_group.this.name
    location = azurerm_resource_group.this.location
    account_tier = "Standard"
    account_replication_type = "ZRS"
}
resource "azurerm_resource_group" "this1"{
    name = "anurag1"
    location = "central india"
}