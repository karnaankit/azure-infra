data "azurerm_key_vault" "this" {
  name                = var.key_vault_name
  resource_group_name = var.rg_name
}

data "azurerm_key_vault_secret" "db_user" {
  name         = "DBUSER"
  key_vault_id = data.azurerm_key_vault.this.id
}

data "azurerm_key_vault_secret" "db_pass" {
  name         = "DBPASS"
  key_vault_id = data.azurerm_key_vault.this.id
}

module "postgres" {
  source                        = "../common/postgres"
  postgres_server_name          = var.postgres_server_name
  resource_group_name           = var.rg_name
  location                      = var.location
  postgres_version              = var.postgres_version
  public_network_access_enabled = var.public_network_access_enabled
  storage_mb                    = var.storage_mb
  storage_tier                  = var.storage_tier
  sku_name                      = var.sku_name
  ad_auth_enabled               = var.ad_auth_enabled
  password_auth_enabled         = var.password_auth_enabled
  tenant_id                     = var.tenant_id
  admin_username                = sensitive(data.azurerm_key_vault_secret.db_user.value)
  admin_password                = sensitive(data.azurerm_key_vault_secret.db_pass.value)
  zone                          = var.postgres_zone
}
