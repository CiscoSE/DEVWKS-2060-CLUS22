# Instantiate all the lab accounts

locals {
  org_default_moid   = data.intersight_organization_organization.default.results[0].moid
  server_admin_moid  = data.intersight_iam_role.server_administrator.results[0].moid
  authn_cisco_moid   = data.intersight_iam_idp_reference.authn_cisco_com.results[0].moid
  default_group_moid = data.intersight_resource_group.default.results[0].moid
}

module "student_orgs_and_roles" {
  source = "./student"
  count  = 15

  student_organization        = "student${count.index + 1}"
  student_email               = "student${count.index + 1}@${var.student_email_domain}"
  server_admin_moid           = local.server_admin_moid
  authn_cisco_moid            = local.authn_cisco_moid
  default_resource_group_moid = local.default_group_moid
}
