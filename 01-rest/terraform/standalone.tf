resource "intersight_asset_device_claim" "Lab-C240-M4L" {
	security_token = var.standalone_token
	serial_number = var.standalone_sernum
}
