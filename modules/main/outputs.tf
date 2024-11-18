output "website_url" {
  value = module.static_website.website_url
}

output "name_servers_to_add" {
  value = module.dns_zone.name_servers
}

output "container_registry_login_server" {
  value = module.acr.container_registry_login_server
}

output "postgres_endpoint" {
  value = module.postgres.postgres_endpoint
}

