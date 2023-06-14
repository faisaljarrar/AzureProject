# Configure Azure provider
provider "azurerm" {
  features {}
}
# Configure files provider
provider "hashicorp/file" {
  version = "<v1.3.2>"
  # Other provider configurations, if any
}