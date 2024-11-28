# main.tf

provider "ibm" {
  ibmcloud_api_key = "eFQEcxi05AUs5_zFIohZQJhRP2D1gVlglhUzo7s1zPWs"  # Replace with your actual IBM Cloud API key
  region           = "us-south"              # Replace "us-south" with your preferred region
}

module "vpc_setup" {
  source   = "./modules/vpc"  # Path to the vpc module
  vpc_name = var.vpc_name     # Use the vpc_name variable defined in variables.tf
}
