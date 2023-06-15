# ADD VNET

resource "azurerm_linux_virtual_machine_scale_set" "scale_set" {
  name                = "linux_vm_ss"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard_B1ls"
  instances           = 1
  admin_username      = var.admin_username
  admin_password      = var.admin_password

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "20_04-lts"
    version   = "latest"
  }
    os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  network_interface {
    name    = "NetworkInterface"
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id = azurerm_subnet.internal.id
    }
  }
}

resource "azurerm_traffic_manager_profile" "traffic_manager" {
  name                = "my-traffic-manager"
  resource_group_name = var.resource_group_name
  traffic_routing_method = "Performance"

  monitor_config {
    protocol = "http"
    port     = 80
    path     = "/"
  }

  dns_config {
    relative_name = "my-traffic-manager"
    ttl           = 60
  }
}