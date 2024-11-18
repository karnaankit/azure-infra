data "azurerm_key_vault_secret" "db_client" {
  name         = "DBCLIENT"
  key_vault_id = data.azurerm_key_vault.this.id
}

data "azurerm_key_vault_secret" "db_host" {
  name         = "DBHOST"
  key_vault_id = data.azurerm_key_vault.this.id
}

data "azurerm_key_vault_secret" "db_name" {
  name         = "DBNAME"
  key_vault_id = data.azurerm_key_vault.this.id
}

data "azurerm_key_vault_secret" "node_env" {
  name         = "NODEENV"
  key_vault_id = data.azurerm_key_vault.this.id
}

data "azurerm_key_vault_secret" "db_port" {
  name         = "DBPORT"
  key_vault_id = data.azurerm_key_vault.this.id
}

data "azurerm_key_vault_secret" "port" {
  name         = "PORT"
  key_vault_id = data.azurerm_key_vault.this.id
}


module "container_app" {
  source                     = "../common/container_app"
  DB_CLIENT                  = sensitive(data.azurerm_key_vault_secret.db_client.value)
  DB_HOST                    = sensitive(data.azurerm_key_vault_secret.db_host.value)
  DB_NAME                    = sensitive(data.azurerm_key_vault_secret.db_name.value)
  DB_PASSWORD                = sensitive(data.azurerm_key_vault_secret.db_pass.value)
  DB_PORT                    = sensitive(data.azurerm_key_vault_secret.db_port.value)
  DB_USER                    = sensitive(data.azurerm_key_vault_secret.db_user.value)
  NODE_ENV                   = sensitive(data.azurerm_key_vault_secret.node_env.value)
  PORT                       = sensitive(data.azurerm_key_vault_secret.port.value)
  container_app_name         = var.container_app_name
  container_cpu              = var.container_cpu
  container_environment_name = var.container_environment_name
  container_image            = var.container_image
  container_memory           = var.container_memory
  container_name             = var.container_name
  location                   = var.location
  resource_group_name        = var.rg_name
  revision_mode              = var.revision_mode
  target_port                = sensitive(data.azurerm_key_vault_secret.port.value)
  transport_protocol         = var.transport_protocol
  container_registry_id      = module.acr.registry_id
  container_registry_host    = module.acr.container_registry_login_server
  custom_domain_name         = var.container_app_domain_name
}