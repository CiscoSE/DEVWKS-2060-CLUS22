locals {
  standalone_moid = data.intersight_asset_device_registration.standalone.results[0].moid
  intersight_moid = data.intersight_asset_device_registration.intersight.results[0].moid
}

data "intersight_asset_device_registration" "standalone" {
  device_hostname = var.standalone_server_name
}

data "intersight_asset_device_registration" "intersight" {
  device_hostname = var.intersight_domain_name
}

output "standalone_moid" {
  value = local.standalone_moid
}

output "intersight_moid" {
  value = local.intersight_moid
}
