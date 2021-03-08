locals {
  bucket_name                            = "${yamldecode(file("../global_values.yaml"))["prefix"]}-${yamldecode(file("../global_values.yaml"))["project"]}-tf-state"
  location                               = yamldecode(file("../global_values.yaml"))["tf_state_bucket_location"]
  resource_group_name                    = yamldecode(file("../global_values.yaml"))["resource_group_name"]
  terraform_backend_config_template_file = "templates/terraform.tf.tpl"
  terraform_state_file                   = "terraform.tfstate"
  terraform_backend_config_file          = "backend.tf"
}
