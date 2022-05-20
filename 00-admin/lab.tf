# Instantiate all the lab accounts

module "student_orgs_and_roles" {
  source = "./student"
  count  = 15

  student_organization        = "student${count.index + 1}"
  student_email               = "student${count.index + 1}@${var.student_email_domain}"
  server_admin_moid           = local.server_admin_moid
  ucs_domain_admin_moid       = local.ucs_domain_admin_moid
  authn_cisco_moid            = local.authn_cisco_moid
  default_resource_group_moid = local.default_group_moid
}
