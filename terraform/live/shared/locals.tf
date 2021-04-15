locals {
  location            = yamldecode(file("../../../region_values.yaml"))["location"]
  application_name    = "${local.prefix}-${yamldecode(file("../../../../../global_values.yaml"))["project"]}"
  domain_name         = yamldecode(file("../../../../../global_values.yaml"))["default_domain_name"]
  resource_group_name = yamldecode(file("../../../../../global_values.yaml"))["resource_group_name"]
  env                 = yamldecode(file("../../../../env_tags.yaml"))["Env"]
  prefix              = yamldecode(file("../../../../../global_values.yaml"))["prefix"]
  custom_tags = merge(
    yamldecode(file("../../../../../global_tags.yaml")),
    yamldecode(file("../../../../env_tags.yaml"))
  )

}
