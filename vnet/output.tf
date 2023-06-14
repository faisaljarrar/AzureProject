# Output the VNet and subnet details
output "vnet_id" {
  value = azurerm_virtual_network.example.id
}

output "public1_subnet_id" {
  value = azurerm_subnet.public1.id
}

output "public2_subnet_id" {
  value = azurerm_subnet.public2.id
}

output "public3_subnet_id" {
  value = azurerm_subnet.public3.id
}
