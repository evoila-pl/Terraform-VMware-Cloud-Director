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

variable "vcd_org_vdc_description" {
  type = string
  description = "Description of your vDC."
}

variable "vcd_org_vdc_network_pool_name" {
  type = string
  description = "Name of Network Pool."
  default = ""
}

variable "vcd_org_vdc_provider_vdc_name" {
  type = string
  description = "Name of Provider VDC."
}

variable "vcd_org_vdc_compute_capacity_cpu" {
  type = string
  description = "How much CPU (Mhz)?"
}

variable "vcd_org_vdc_compute_capacity_memory" {
  type = string
  description = "How much CPU (GB)?"
}

variable "vcd_org_vdc_storage_profile_name" {
  type = string
  description = "Name of your Storage Profile."
}

variable "vcd_org_vdc_storage_profile_limit" {
  type = string 
  description = "Limit of Mb of your Storage Profile."
}
