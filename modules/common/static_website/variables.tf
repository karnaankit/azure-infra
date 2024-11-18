variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account"
  type        = string
}

variable "location" {
  description = "The location of the resource group in which to create the storage account"
  type        = string
}

variable "account_tier" {
  description = "The Tier to use for this storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The Replication Type to use for this storage account"
  type        = string
  default     = "LRS"
}

variable "index_document_name" {
  description = "The name of the index document"
  type        = string
  default     = "index.html"
}

variable "use_custom_domain" {
  description = "Whether to use a custom domain for the static website"
  type        = bool
  default     = false
}

variable "custom_domain_name" {
  description = "The custom domain name to use for the static website"
  type        = string
  nullable    = true
  default     = null
}