variable "student_organization" {
  description = "Student Organization - Terraform deployed"
  type        = string
}

variable "student_email" {
  description = "Student Email Address - Terraform deployed"
  type        = string
}

variable "server_admin_moid" {
    description = "MOID of iam.Role object mapped to 'Server Administrator' privileges"
    type = string
}

variable "authn_cisco_moid" {
    description = "MOID of iam.IdpReference object mapped to 'cisco.com' authentication"
    type = string
}

variable "default_resource_group_moid" {
    description = "MOID of resource.Group object mapped to the default RG"
    type = string
}
