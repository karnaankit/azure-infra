resource "azurerm_container_app_environment" "this" {
  name                = var.container_environment_name
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_container_app" "this" {
  name                         = var.container_app_name
  resource_group_name          = var.resource_group_name
  container_app_environment_id = azurerm_container_app_environment.this.id
  revision_mode                = var.revision_mode
  template {
    container {
      name   = var.container_name
      image  = var.container_image
      cpu    = var.container_cpu
      memory = var.container_memory

      env {
        name  = "DB_HOST"
        value = var.DB_HOST
      }

      env {
        name  = "DB_NAME"
        value = var.DB_NAME
      }

      env {
        name  = "DB_PASSWORD"
        value = var.DB_PASSWORD
      }

      env {
        name  = "DB_PORT"
        value = var.DB_PORT
      }

      env {
        name  = "DB_USER"
        value = var.DB_USER
      }

      env {
        name  = "NODE_ENV"
        value = var.NODE_ENV
      }

      env {
        name  = "PORT"
        value = var.PORT
      }

      env {
        name  = "DB_CLIENT"
        value = var.DB_CLIENT
      }
    }
  }
  ingress {
    external_enabled = true
    transport        = var.transport_protocol
    target_port      = var.target_port
    traffic_weight {
      percentage      = 100
      latest_revision = true
    }
  }
  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.this.id]
  }
  registry {
    server   = var.container_registry_host
    identity = azurerm_user_assigned_identity.this.id
  }
  depends_on = [azurerm_user_assigned_identity.this, azurerm_role_assignment.acr_pull]
}

resource "azurerm_user_assigned_identity" "this" {
  name                = "acr-identity"
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_role_assignment" "acr_pull" {
  principal_id         = azurerm_user_assigned_identity.this.principal_id
  role_definition_name = "AcrPull"
  scope                = var.container_registry_id
}

resource "azurerm_container_app_custom_domain" "this" {
  container_app_id = azurerm_container_app.this.id
  name             = var.custom_domain_name

  lifecycle {
    ignore_changes = [certificate_binding_type, container_app_environment_certificate_id]
  }
}

