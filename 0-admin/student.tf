#
# Resources defined for each student
#

locals {
  server_admin_moid  = data.intersight_iam_role.server_administrator.results[0].moid
  authn_cisco_moid   = data.intersight_iam_idp_reference.authn_cisco_com.results[0].moid
  default_group_moid = data.intersight_resource_group.default.results[0].moid
}

variable "student_organization" {
  description = "Student Organization - Terraform deployed"
  type        = string
  default     = "student1"
}

variable "student_email" {
  description = "Student Email Address - Terraform deployed"
  type        = string
  default     = "student1@broadcaststorm.info"
}

resource "intersight_organization_organization" "student" {
  description = "Terraform Deployed"
  name        = var.student_organization

  resource_groups = [
    {
      moid                  = local.default_group_moid
      object_type           = "resource.Group"
      class_id              = "mo.MoRef"
      additional_properties = ""
      selector              = null
    }
  ]
}

resource "intersight_iam_permission" "student" {
  description = "Student Role - Terraform Deployed"
  name        = var.student_organization
}

resource "intersight_iam_user" "student" {
  email            = var.student_email
  user_id_or_email = var.student_email

  idpreference {
    moid = local.authn_cisco_moid
  }

  permissions {
    moid = intersight_iam_permission.student.moid
  }
}

resource "intersight_iam_resource_roles" "student" {
  permission {
    object_type = "iam.Permission"
    moid        = intersight_iam_permission.student.moid
  }

  resource {
    object_type = "organization.Organization"
    moid        = intersight_organization_organization.student.moid
  }

  roles = [
    {
      moid                  = local.server_admin_moid
      object_type           = "iam.Role"
      class_id              = "mo.MoRef"
      additional_properties = ""
      selector              = null
    }
  ]
}
