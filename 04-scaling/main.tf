terraform {
  required_version = "~> 1.1.9"
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.28"
    }
  }
}

provider "intersight" {
  apikey    = var.apikey
  secretkey = var.secretkey
  endpoint  = var.endpoint
}

# Pull managed object information related to the studentX organization
data "intersight_organization_organization" "target" {
  name        = var.target_organization
}

output "org_target_moid" {
  value = data.intersight_organization_organization.target.results[0].moid
}

# Local vars for easy reference
locals {
  target_org_moid = data.intersight_organization_organization.target.results[0].moid
}
