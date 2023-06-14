# Create resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "West Europe"
}

resource "random_string" "random" {
length = 14
special = false
override_special = "/@£$"
upper = false
}


# Create Azure SQL server
resource "azurerm_sql_server" "sql" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "mysqladminun"
  administrator_login_password = "H@Sh1CoR3!"
}
