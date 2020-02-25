variable "vcd_user" {
  type = string
  description = "Username of admin account."
  default = "administrator"
}

variable "vcd_pass" {
  type = string
  description = "Password of admin user."
}

variable "vcd_org" {
  type = string
  description = "For provider choose default."
  default = "System"
}

variable "vcd_url" {
  type = string
  description = "Address of your vCD API."
}

variable "vcd_max_retry_timeout" {
  type = string
  default = "60"
}

variable "vcd_allow_unverified_ssl" {
  type = bool
  default = "true"
}

variable "vcd_org_name" {
  type = string
  description = "Name of your org."
}

variable "vcd_org_vdc_name" {
  type = string
  description = "Name of your vDC."
}

# Edge

variable "vcd_edgegateway_name" {
  type = string
  description = "Name of your Edge."
}

variable "vcd_edgegateway_description" {
  type = string
  description = "Description of your Edge."
}

variable "vcd_edgegateway_configuration" {
  type = string
  description = "Configuration of your Edge (comapct, full, x-large, full4)."
}

variable "vcd_edgegateway_ip" {
  type = string
  description = "IP Address for default external network."
}

variable "vcd_edgegateway_gateway_ip" {
  type = string
  description = "IP Address of default gateway in default external network."
}

variable "vcd_edgegateway_netmask_ip" {
  type = string
  description = "Netmask for default external network."
}
