# Instantiate all the lab accounts

resource "intersight_resource_group" "devwks2060" {
  description = "Terraform Deployed"
  name        = "DEVWKS-2060-CLUS22"
  qualifier   = "Allow-Selectors"

  selectors {
    object_type = "resource.Selector"
    selector    = "/api/v1/asset/DeviceRegistrations?$filter=Moid eq '${local.standalone_moid}'"
  }

  selectors {
    object_type = "resource.Selector"
    selector    = "/api/v1/asset/DeviceRegistrations?$filter=Moid eq '${local.intersight_moid}'"
  }
}

module "student_orgs_and_roles" {
  source = "./student"
  count  = 15

  student_organization  = "student${count.index + 101}"
  student_email         = "student${count.index + 101}@${var.student_email_domain}"
  server_admin_moid     = local.server_admin_moid
  ucs_domain_admin_moid = local.ucs_domain_admin_moid
  authn_cisco_moid      = local.authn_cisco_moid
  resource_group_moid   = intersight_resource_group.devwks2060.moid
}
