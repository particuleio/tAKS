resource "azurerm_storage_account" "tf_state" {
  # "${prefix}-${project}-tf-state" -> "${prefix}${project}tfstate"
  name                     = replace(local.bucket_name, "-", "")
  resource_group_name      = data.azurerm_resource_group.current.name
  location                 = data.azurerm_resource_group.current.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tf_state" {
  name                  = local.bucket_name
  storage_account_name  = azurerm_storage_account.tf_state.name
  container_access_type = "private"
}
