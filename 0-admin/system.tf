#
# Intersight System Defined Entities
# 

data "intersight_iam_idp_reference" "authn_cisco_com" {
  domain_name = "cisco.com"
}

data "intersight_iam_role" "server_administrator" {
  name = "Server Administrator"
}

data "intersight_resource_group" "default" {
  name = "default"
}
