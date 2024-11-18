output "website_url" {
  value      = azurerm_storage_account.static_website.primary_web_endpoint
  depends_on = [azurerm_storage_account_static_website.this]
}
