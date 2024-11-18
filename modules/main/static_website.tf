module "static_website" {
  source               = "../common/static_website"
  location             = var.location
  resource_group_name  = var.rg_name
  storage_account_name = var.storage_ac_name
  use_custom_domain    = var.use_custom_domain_sa
  custom_domain_name   = var.custom_domain_name_sa
}
