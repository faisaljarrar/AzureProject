variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "azure_project"
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
  default     = "East US"
}

variable "admin_username" {
  description = "Username for the Linux VMs"
  type        = string
  default     = "admin"
}

variable "admin_password" {
  description = "Password for the Linux VMs"
  type        = string
  default     = ""
}

variable "vm_instance_count" {
  description = "Number of VM instances in the scale set"
  type        = number
  default     = 1
}