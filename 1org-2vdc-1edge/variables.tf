variable "vcd_user" {
  description = "Username of admin account."
  default     = "administrator"
}

variable "vcd_pass" {
  description = "Password of admin user."
}

variable "vcd_org" {
  description = "For provider choose default."
  default     = "System"
}

variable "vcd_url" {
  description = "Address of your vCD API."
}

variable "vcd_max_retry_timeout" {
  default = "60"
}

variable "vcd_allow_unverified_ssl" {
  default = "true"
}

# Org

variable "vcd_org_name" {
  description = "Name of your org."
}

variable "vcd_org_full_name" {
  description = "Name of your org."
}

# vDC Allocation

variable "vcd_org_vdc_alloc_name" {
  description = "Name of your vDC."
}

variable "vcd_org_vdc_alloc_description" {
  description = "Description of your vDC."
}

variable "vcd_org_vdc_alloc_compute_capacity_cpu" {
  description = "How much CPU (Mhz)?"
}

variable "vcd_org_vdc_alloc_compute_capacity_memory" {
  description = "How much memory (GB)?"
}

variable "vcd_org_vdc_alloc_network_pool_name" {
  description = "Name of Network Pool."
  default     = ""
}

variable "vcd_org_vdc_alloc_provider_vdc_name" {
  description = "Name of Provider VDC."
}

variable "vcd_org_vdc_alloc_storage_profile_name" {
  description = "Name of your Storage Profile."
}

variable "vcd_org_vdc_alloc_storage_profile_limit" {
  description = "Limit of Mb of your Storage Profile."
}

# vDC PaYG

variable "vcd_org_vdc_payg_name" {
  description = "Name of your vDC."
}

variable "vcd_org_vdc_payg_description" {
  description = "Description of your vDC."
}

variable "vcd_org_vdc_payg_network_pool_name" {
  description = "Name of Network Pool."
  default     = ""
}

variable "vcd_org_vdc_payg_provider_vdc_name" {
  description = "Name of Provider VDC."
}

variable "vcd_org_vdc_payg_storage_profile_name" {
  description = "Name of your Storage Profile."
}

variable "vcd_org_vdc_payg_storage_profile_limit" {
  description = "Limit of Mb of your Storage Profile."
}

# Edge

variable "vcd_edgegateway_name" {
  description = "Name of your Edge."
}

variable "vcd_edgegateway_description" {
  description = "Description of your Edge."
}

variable "vcd_edgegateway_configuration" {
  description = "Configuration of your Edge (comapct, full, x-large, full4)."
}

variable "vcd_edgegateway_ip" {
  description = "IP Address for default external network."
}

variable "vcd_edgegateway_gateway_ip" {
  description = "IP Address of default gateway in default external network."
}

variable "vcd_edgegateway_netmask_ip" {
  description = "Netmask for default external network."
}
