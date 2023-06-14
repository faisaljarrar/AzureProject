# Define outputs
output "database_name" {
  value = azurerm_sql_database.example.name
}

output "server_name" {
  value = azurerm_sql_server.example.name
}

output "config_file" {
  value = file.example.filename
}