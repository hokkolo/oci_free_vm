provider "oci" {
  region       = var.region
  tenancy_ocid = var.tenancy_ocid
  user_ocid    = var.user_ocid
  fingerprint  = var.fingerprint
  private_key  = file(var.private_key_path)
}

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_ocid
}

resource "oci_core_instance" "amd_instance" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = var.compartment_ocid
  shape              = var.vm_shape
  shape_config {
    memory_in_gbs = 1
    ocpus = 1
  }

  create_vnic_details {
    subnet_id = var.subnet_ocid
  }

  source_details {
    source_type = "image"
    source_id = var.ubuntu_20_ocid
  }

  metadata = {
    ssh_authorized_keys = file(var.ssh_key_path)  # Change this to your actual SSH public key
  }

  display_name = "Micro instance"
}
