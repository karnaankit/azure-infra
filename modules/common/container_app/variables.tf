variable "container_app_name" {
  description = "The name of the container app"
  type        = string
}

variable "container_environment_name" {
  description = "The name of the container app environment"
  type        = string
}

variable "container_image" {
  description = "The container image to use for the container app"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "revision_mode" {
  description = "The revision mode of the container app"
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

variable "target_port" {
  description = "The target port of the container app"
  type        = number
}

variable "transport_protocol" {
  description = "The transport protocol of the container app"
  type        = string
}

variable "PORT" {
  description = "The port of the container app"
  type        = number
}

variable "DB_HOST" {
  description = "The host of the database"
  type        = string
}

variable "DB_NAME" {
  description = "The name of the database"
  type        = string
}

variable "DB_PASSWORD" {
  description = "The password of the database"
  type        = string
}

variable "DB_PORT" {
  description = "The port of the database"
  type        = number
}

variable "DB_USER" {
  description = "The user of the database"
  type        = string
}

variable "DB_CLIENT" {
  description = "The client of the database"
  type        = string
}

variable "NODE_ENV" {
  description = "The environment of the container app"
  type        = string
}

variable "container_registry_id" {
  description = "The ID of the container registry"
  type        = string
}

variable "container_registry_host" {
  description = "The host of the container registry"
  type        = string
}

variable "custom_domain_name" {
  description = "The custom domain name for the container app"
  type        = string
}