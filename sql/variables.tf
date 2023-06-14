# Define variables
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "my-resource-group"
}

variable "sql_server_name" {
  description = "Name of the Azure SQL server"
  type        = string
  default     = "my-sql-server"
}

variable "database_name" {
  description = "Name of the Azure SQL database"
  type        = string
  default     = "my-database"
}