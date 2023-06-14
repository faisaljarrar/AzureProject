# Define variables
variable "resource_group_name" {
  description = "rg"
  type        = string
  default     = "project-resource-group"
}

variable "sql_server_name" {
  description = "sql"
  type        = string
  default     = "project-sql-server"
}