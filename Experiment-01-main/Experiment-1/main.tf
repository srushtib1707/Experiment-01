
terraform {
  required_providers {
    ibm = {
      source  = "ibm-Cloud/ibm"
      version = "~> 1.53.0" # Specify the required version
    }
  }
}

provider "ibm" {
  # Add provider configuration if needed
  ibmcloud_api_key = "my_key" # Replace with your IBM Cloud API key
}


module "vpc_setup" {
  source   = "./modules/vpc"
  vpc_name = var.vpc_name
}
