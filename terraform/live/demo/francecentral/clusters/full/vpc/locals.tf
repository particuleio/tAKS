locals {
  location            = yamldecode(file("../../../region_values.yaml"))["location"]
  resource_group_name = yamldecode(file("../../../../../global_values.yaml"))["resource_group_name"]
  env                 = yamldecode(file("../../../../env_tags.yaml"))["Env"]
  prefix              = yamldecode(file("../../../../../global_values.yaml"))["prefix"]
  global_tags = yamldecode(file("../../../../../global_tags.yaml"))
  env_tags = yamldecode(file("../../../../env_tags.yaml"))
  custom_tags = merge(
    local.global_tags,
    local.env_tags
  )
}
