module "acr" {
  source                  = "../common/container_registry"
  container_registry_name = var.container_registry_name
  resource_group_name     = var.rg_name
  location                = var.location
  sku                     = var.acr_sku
  admin_enabled           = var.acr_admin_enabled
}
