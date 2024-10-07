resource "azurerm_key_vault" "example" {
  name                              = var.azure_key_vault_name
  location                          = var.location
  resource_group_name               = var.resource_group_name
  sku_name                          = var.sku_name
  tenant_id                         = var.tenant_id

  enabled_for_disk_encryption       = var.enabled_for_disk_encryption
  enabled_for_deployment            = var.enabled_for_deployment
  enabled_for_template_deployment   = var.enabled_for_template_deployment
  enable_rbac_authorization         = var.enable_rbac_authorization


  purge_protection_enabled          = var.purge_protection_enabled
  soft_delete_retention_days        = 90
  public_network_access_enabled     = false

  network_acls {
      bypass                        = "AzureServices"
      default_action                = "Deny"
      ip_rules                      = []
      virtual_network_subnet_ids    = []
  }

  tags = var.tags

}