output "postgres_endpoint" {
  value = azurerm_postgresql_flexible_server.this.fqdn
}

output "id" {
  value = azurerm_postgresql_flexible_server.this.id
}