# Configure Azure provider
provider "azurerm" {
  features {}
}
# Configure files provider
provider "hashicorp/file" {
  version = "<desired_version>"
  # Other provider configurations, if any
}