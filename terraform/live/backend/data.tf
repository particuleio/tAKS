data "template_file" "terraform_backend_config" {
  template = file(local.terraform_backend_config_template_file)

  vars = {
    resource_group_name  = data.azurerm_resource_group.current.name
    storage_account_name = azurerm_storage_account.tf_state.name
    container_name       = azurerm_storage_container.tf_state.name

    terraform_state_file = local.terraform_state_file
  }
}

resource "local_file" "terraform_backend_config" {
  content         = data.template_file.terraform_backend_config.rendered
  filename        = local.terraform_backend_config_file
  file_permission = "0644"
}
