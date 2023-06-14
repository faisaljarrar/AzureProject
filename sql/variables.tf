# Define variables
variable "resource_group_name" {
  description = "rg"
  type        = string
  default     = "my-resource-group"
}

variable "sql_server_name" {
  description = "sql"
  type        = string
  default     = "my-sql-server"
}

variable "database_name" {
  description = "mysql"
  type        = string
  default     = "my-database"
}