output "outbound_ip_addresses" {
  value = azurerm_container_app.this.outbound_ip_addresses
}

output "custom_domain_verification_id" {
  value = azurerm_container_app.this.custom_domain_verification_id
}

output "container_app_fqdn" {
  value = azurerm_container_app.this.latest_revision_fqdn
}

output "container_environment_static_ip" {
  value = azurerm_container_app_environment.this.static_ip_address
}