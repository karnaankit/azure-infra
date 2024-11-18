variable "rg_name" {
  description = "The name of the resource group in which to create the container registry"
  type        = string
}

variable "location" {
  description = "The location of the resource group in which to create the container registry"
  type        = string
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry"
  type        = string
}

variable "container_registry_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "acr_admin_enabled" {
  description = "Enable admin user for the Azure Container Registry"
  type        = bool
}

variable "domain_name" {
  description = "The domain name for the DNS zone"
  type        = string
}

variable "storage_ac_name" {
  description = "The name of the storage account"
  type        = string
}

variable "use_custom_domain_sa" {
  description = "Use custom domain for the storage account"
  type        = bool
}

variable "custom_domain_name_sa" {
  description = "The custom domain name for the storage account"
  type        = string
}

variable "postgres_server_name" {
  description = "The name of the PostgreSQL server"
  type        = string
}

variable "postgres_version" {
  description = "The version of PostgreSQL"
  type        = string
}

variable "public_network_access_enabled" {
  description = "Enable public network access for the PostgreSQL server"
  type        = bool
}

variable "storage_mb" {
  description = "The storage capacity of the PostgreSQL server"
  type        = number
}

variable "storage_tier" {
  description = "The storage tier of the PostgreSQL server"
  type        = string
}

variable "sku_name" {
  description = "The SKU of the PostgreSQL server"
  type        = string
}

variable "ad_auth_enabled" {
  description = "Enable Active Directory authentication for the PostgreSQL server"
  type        = bool
}

variable "password_auth_enabled" {
  description = "Enable password authentication for the PostgreSQL server"
  type        = bool
}

variable "tenant_id" {
  description = "The tenant ID for the PostgreSQL server"
  type        = string
  nullable    = true
  default     = null
}

variable "key_vault_name" {
  description = "The ID of the key vault"
  type        = string
}

variable "postgres_zone" {
  description = "The zone for the PostgreSQL server"
  type        = string
}

variable "container_name" {
  description = "The name of the container"
  type        = string
}

variable "container_cpu" {
  description = "The CPU of the container"
  type        = string
}

variable "container_memory" {
  description = "The memory of the container"
  type        = string
}

variable "revision_mode" {
  description = "The revision mode of the container app"
  type        = string
}

variable "container_app_name" {
  description = "The name of the container app"
  type        = string
}

variable "container_environment_name" {
  description = "The name of the container app environment"
  type        = string
}

variable "container_image" {
  description = "The image of the container"
  type        = string
}

variable "transport_protocol" {
  description = "The transport protocol for the container app"
  type        = string
}

variable "container_app_domain_name" {
  description = "The domain name for the container app"
  type        = string
}

