output "website_url" {
  value = module.main.website_url
}

output "name_servers_to_add" {
  value = module.main.name_servers_to_add
}

output "container_registry_login_server" {
  value = module.main.container_registry_login_server
}

output "postgres_endpoint" {
  value = module.main.postgres_endpoint
}
