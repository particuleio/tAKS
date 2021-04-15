module "network" {
  source              = "Azure/network/azurerm"
  resource_group_name = data.azurerm_resource_group.current.name
  address_space       = "10.0.0.0/16"
  subnet_prefixes     = ["10.0.1.0/24"]
  subnet_names        = ["${local.location}-a"]
  depends_on          = [data.azurerm_resource_group.current]
  vnet_name = "vnet-aks-${local.env}"
  # location = local.location
  tags = local.custom_tags
}
