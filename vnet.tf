resource "azurerm_virtual_network" "vnet1" {
  name                = "vnet-${var.vnet1-name}"
  address_space       = ["10.10.0.0/16"]
  location            = var.vnet1-location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet1" {
  name                 = "sub-${var.vnet1-name}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.10.1.0/24"]
}