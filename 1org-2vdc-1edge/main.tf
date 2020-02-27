# Provider

provider "vcd" {
  user = var.vcd_user
  password  = var.vcd_pass
  org = var.vcd_org
  url = var.vcd_url
  max_retry_timeout = var.vcd_max_retry_timeout
  allow_unverified_ssl = var.vcd_allow_unverified_ssl
}

# Org

resource "vcd_org" "my-vcd-org" {
  name = var.vcd_org_name
  full_name = var.vcd_org_full_name
  can_publish_catalogs = "false"
  is_enabled = "true"
  delete_force = "true"
  delete_recursive = "true"
}

# vDC Allocation

resource "vcd_org_vdc" "my-vdc-alloc" {
  name = var.vcd_org_vdc_alloc_name
  description = var.vcd_org_vdc_alloc_description
  org = var.vcd_org_name

  allocation_model = "AllocationPool"
  network_pool_name = var.vcd_org_vdc_alloc_network_pool_name
  provider_vdc_name = var.vcd_org_vdc_alloc_provider_vdc_name

  compute_capacity {
    cpu {
      allocated = var.vcd_org_vdc_alloc_compute_capacity_cpu
    }

    memory {
      allocated = var.vcd_org_vdc_alloc_compute_capacity_memory
    }
  }

  storage_profile {
    name     = var.vcd_org_vdc_alloc_storage_profile_name
    limit    = var.vcd_org_vdc_alloc_storage_profile_limit
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

# vDC PaYG

resource "vcd_org_vdc" "my-vdc-payg" {
  name = var.vcd_org_vdc_payg_name
  description = var.vcd_org_vdc_payg_description
  org = var.vcd_org_name

  allocation_model = "AllocationVApp"
  network_pool_name = var.vcd_org_vdc_payg_network_pool_name
  provider_vdc_name = var.vcd_org_vdc_payg_provider_vdc_name

  compute_capacity {
    cpu {
      limit = 0
    }

    memory {
      limit = 0
    }
  }

  storage_profile {
    name     = var.vcd_org_vdc_payg_storage_profile_name
    limit    = var.vcd_org_vdc_payg_storage_profile_limit
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

# Edge

resource "vcd_edgegateway" "org-edge" {
  org = var.vcd_org_name
  vdc = var.vcd_org_vdc_alloc_name

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
