terraform {
  backend "azurerm" {
    resource_group_name  = "tmassard"
    storage_account_name = "tbobmtakstfstate"
    container_name       = "tbobm-taks-tf-state"
    key                  = "terraform.tfstate"
  }
}
