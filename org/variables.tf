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

variable "vcd_org_full_name" {
  type = string
  description = "Full name of your org."
}

variable "vcd_can_publish_catalogs" {
  type = bool
  description = "Would you allow this organization to share a catalog?"
  default = "false"
}
