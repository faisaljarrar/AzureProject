# Configure Azure provider
provider "azurerm" {
  features {}
}
provider "hashicorp/azurerm" {
  version = ">= 3.11.0, < 4.0.0"
  # Other provider configurations, if any
}