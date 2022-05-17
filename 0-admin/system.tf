#
# Intersight System Defined Entities
# 

data "intersight_organization_organization" "default" {
  name = "default"
}

output "org_default_moid" {
  value = data.intersight_organization_organization.default.results[0].moid
}

data "intersight_iam_idp_reference" "authn_cisco_com" {
  domain_name = "cisco.com"
}

output "authn_cisco_com_moid" {
  value = data.intersight_iam_idp_reference.authn_cisco_com.results[0].moid
}

data "intersight_iam_role" "server_administrator" {
  name = "Server Administrator"
}

output "server_admin_moid" {
  value = data.intersight_iam_role.server_administrator.results[0].moid
}

data "intersight_resource_group" "default" {
  name = "default"
}

output "default_rg_moid" {
  value = data.intersight_resource_group.default.results[0].moid
}
