variable "postgres_server_name" {
  type        = string
  description = "The name of the PostgreSQL server."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the PostgreSQL server."
}

variable "location" {
  type        = string
  description = "The location/region where the PostgreSQL server will be created."
}

variable "postgres_version" {
  type        = string
  description = "The version of PostgreSQL to use."
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether or not public network access is allowed for the PostgreSQL server."
  default     = true
}

variable "storage_mb" {
  type        = number
  description = "The storage capacity of the PostgreSQL server in megabytes."
}

variable "storage_tier" {
  type        = string
  description = "The storage tier for the PostgreSQL server."
}

variable "sku_name" {
  type        = string
  description = "The compute size for the PostgreSQL server."
}

variable "ad_auth_enabled" {
  type        = bool
  description = "Whether or not Active Directory authentication is enabled for the PostgreSQL server."
}

variable "password_auth_enabled" {
  type        = bool
  description = "Whether or not password authentication is enabled for the PostgreSQL server."
}

variable "tenant_id" {
  type        = string
  description = "The ID of the Azure Active Directory tenant used for Active Directory authentication."
  nullable    = true
  default     = null
}

variable "admin_username" {
  type        = string
  description = "The administrator username for the PostgreSQL server."
}

variable "admin_password" {
  type        = string
  description = "The administrator password for the PostgreSQL server."
}

variable "zone" {
  type        = string
  description = "The availability zone for the PostgreSQL server."
}