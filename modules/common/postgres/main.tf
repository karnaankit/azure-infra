resource "azurerm_postgresql_flexible_server" "this" {
  name                          = var.postgres_server_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  version                       = var.postgres_version
  public_network_access_enabled = var.public_network_access_enabled
  storage_mb                    = var.storage_mb
  storage_tier                  = var.storage_tier
  sku_name                      = var.sku_name
  authentication {
    active_directory_auth_enabled = var.ad_auth_enabled
    password_auth_enabled         = var.password_auth_enabled
    tenant_id                     = var.tenant_id
  }
  administrator_login    = var.admin_username
  administrator_password = var.admin_password
  zone                   = var.zone
}



