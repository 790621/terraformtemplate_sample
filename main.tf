provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region = var.region
}

resource "ibm_compute_vm_instance" "example_vm" {
  name = "ubu-vm"
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
