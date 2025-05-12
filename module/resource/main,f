resource "azurerm_resource_group" "rg" {
  for_each = var.resource_rg
  name     = each.key
  location = each.value
}
