variable "container_registry_name" {
  description = "The name of the container registry"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the container registry"
  type        = string
}

variable "location" {
  description = "The location of the container registry"
  type        = string
}

variable "sku" {
  description = "The pricing plan of the container registry"
  type        = string
}

variable "admin_enabled" {
  description = "Whether or not the admin user is enabled"
  type        = bool
}
