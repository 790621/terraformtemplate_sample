# terraformtemplate_sample
# terraform template for a vm
# 
provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region = var.region
}

resource "ibm_compute_vm_instance" "example_vm" {
  name = "marcel-vm"
  image_id = var.image_id
  profile = var.profile
  vpc = var.vpc_id
  primary_network_interface {
    name = "nic-1"
    subnet_id = var.subnet_id
  }
  keys = [var.ssh_key]
  zone = var.zone
}
# discription
#This example creates a virtual machine named "marcel-vm". The properties of the virtual machine like the image, the profile, the VPC and the network interface are defined via variables that can be defined in a separate variables file. The SSH key is also defined as a variable. The provider is configured to use the IBM Cloud API key and region, which can also be defined as variables.
