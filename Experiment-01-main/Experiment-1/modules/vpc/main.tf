terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "~> 1.53.0"
    }
  }
}

resource "ibm_is_vpc" "vpc_module" {
  name = var.vpc_name
}
