provider "vcd" {
  user = var.vcd_user
  password  = var.vcd_pass
  org = var.vcd_org
  url = var.vcd_url
  max_retry_timeout = var.vcd_max_retry_timeout
  allow_unverified_ssl = var.vcd_allow_unverified_ssl
}

resource "vcd_edgegateway" "my-edge" {
  org = var.vcd_org_name
  vdc = var.vcd_org_vdc_name

  name = var.vcd_edgegateway_name
  description = var.vcd_edgegateway_description
  configuration = var.vcd_edgegateway_configuration
  advanced = true

  external_network {
    name = "Internet"
    subnet {
      ip_address = var.vcd_edgegateway_ip
      gateway = var.vcd_edgegateway_gateway_ip
      netmask = var.vcd_edgegateway_netmask_ip
      use_for_default_route = true
    }
  }
}
