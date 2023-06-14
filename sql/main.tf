# Create resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = "West Europe"
}

# Create Azure SQL server
resource "azurerm_sql_server" "example" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = "password"
}

# Create Azure SQL database
resource "azurerm_sql_database" "example" {
  name                = var.database_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  server_name         = azurerm_sql_server.example.name
  edition             = "GeneralPurpose"
  requested_service_objective_name = "GP_Gen5_2"
}

# Create files provider
resource "file" "example" {
  filename = "config.txt"
  content  = <<EOF
[config]
database_name = "${azurerm_sql_database.example.name}"
server_name   = "${azurerm_sql_server.example.name}"
EOF
}