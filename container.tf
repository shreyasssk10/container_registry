resource "azurerm_resource_group" "rg07" {
  name     = "rgcon"
  location = "eastus"
}

resource "azurerm_container_registry" "cg" {
  name                = "conatinerreg001"
  resource_group_name = azurerm_resource_group.rg07.name
  location            = azurerm_resource_group.rg07.location
  sku                 = "Premium"
  admin_enabled       = false
}
