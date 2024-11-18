module "dns_zone" {
  source              = "../common/dns_zone"
  resource_group_name = var.rg_name
  domain_name         = var.domain_name
}

resource "azurerm_dns_cname_record" "this" {
  name                = "todo"
  resource_group_name = var.rg_name
  ttl                 = 300
  zone_name           = module.dns_zone.zone_name
  record              = trim(replace(module.static_website.website_url, "https://", ""), "/")
}

resource "azurerm_dns_a_record" "this" {
  name                = "@"
  resource_group_name = var.rg_name
  ttl                 = 300
  zone_name           = module.dns_zone.zone_name
  records             = toset([module.container_app.container_environment_static_ip])
}

resource "azurerm_dns_txt_record" "this" {
  name                = "asuid"
  resource_group_name = var.rg_name
  ttl                 = 300
  zone_name           = module.dns_zone.zone_name
  record {
    value = module.container_app.custom_domain_verification_id
  }
}