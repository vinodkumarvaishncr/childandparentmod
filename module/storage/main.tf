resource "azurerm_storage_account" "sc" {
  for_each = var.storageAccount_infa

  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = each.key  # Key matches resource_rg
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
