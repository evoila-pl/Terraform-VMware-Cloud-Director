provider "vcd" {
  user = var.vcd_user
  password  = var.vcd_pass
  org = var.vcd_org
  url = var.vcd_url
  max_retry_timeout = var.vcd_max_retry_timeout
  allow_unverified_ssl = var.vcd_allow_unverified_ssl
}

resource "vcd_org" "my-vcd-org" {
  name = var.vcd_org_name
  full_name = var.vcd_org_full_name
  can_publish_catalogs = var.vcd_can_publish_catalogs
  is_enabled = "true"
  delete_force = "true"
  delete_recursive = "true"
}
