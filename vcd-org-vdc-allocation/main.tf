provider "vcd" {
  user = var.vcd_user
  password  = var.vcd_pass
  org = var.vcd_org
  url = var.vcd_url
  max_retry_timeout = var.vcd_max_retry_timeout
  allow_unverified_ssl = var.vcd_allow_unverified_ssl
}

resource "vcd_org_vdc" "my-vdc" {
  name = var.vcd_org_vdc_name
  description = var.vcd_org_vdc_description
  org = var.vcd_org_name

  allocation_model = "AllocationPool"
  network_pool_name = var.vcd_org_vdc_network_pool_name
  provider_vdc_name = var.vcd_org_vdc_provider_vdc_name

  compute_capacity {
    cpu {
      allocated = var.vcd_org_vdc_compute_capacity_cpu
    }

    memory {
      allocated = var.vcd_org_vdc_compute_capacity_memory
    }
  }

  storage_profile {
    name     = var.vcd_org_vdc_storage_profile_name
    limit    = var.vcd_org_vdc_storage_profile_limit
    default  = true
  }

  metadata = {
    metatag-01 = "Value of Metatag 01."
    metatag-02 = "Value of Metatag 02."
  }  

  enabled = true
  enable_thin_provisioning = true
  enable_fast_provisioning = false
  delete_force = true
  delete_recursive = true
}
