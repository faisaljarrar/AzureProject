# Define outputs
output "server_name" {
  value = azurerm_sql_server.sql.name
}
output url {
    value = azurerm_mysql_server.sql.fqdn
}