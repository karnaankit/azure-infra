resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_storage_account" "static_website" {
  name                     = join("", [var.storage_account_name, random_string.suffix.result])
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  dynamic "custom_domain" {
    for_each = var.use_custom_domain ? [1] : []
    content {
      name = var.custom_domain_name
    }
  }
}

resource "azurerm_storage_account_static_website" "this" {
  storage_account_id = azurerm_storage_account.static_website.id
  index_document     = var.index_document_name
  depends_on         = [azurerm_storage_account.static_website]
}

