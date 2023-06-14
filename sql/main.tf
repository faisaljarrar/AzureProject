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
  
  administrator_login          = "mysqladminun"
  administrator_login_password = "H@Sh1CoR3!"

  sku_name   = "B_Gen5_2"
  version    = "5.7"
}
