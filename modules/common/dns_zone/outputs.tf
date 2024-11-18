output "zone_id" {
  value = azurerm_dns_zone.this.id
}

output "name_servers" {
  value = azurerm_dns_zone.this.name_servers
}

output "zone_name" {
  value = azurerm_dns_zone.this.name
}