resource "azurerm_resource_group" "terraform" {
  name     = "StorageAccount-ResourceGroup"
  location = "westus"
}

resource "azurerm_storage_account" "terraform" {
  name                     = "team2project"
  resource_group_name      = azurerm_resource_group.terraform.name
  location                 = azurerm_resource_group.terraform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Production"
  }
}

output "storage_account_name" {
  value = azurerm_storage_account.terraform.name
}

output "storage_account_key" {
  value = azurerm_storage_account.terraform.primary_access_key
}

output "resource_group_name" {
  value = azurerm_resource_group.terraform.name
}

output "resource_group_location" {
  value = azurerm_resource_group.terraform.location
}
