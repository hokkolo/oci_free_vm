variable "region" {
    description = "oci region"
    type = string
    # default = ""  ## Region
}

variable "compartment_ocid" {
  description = "OCI Compartment OCID"
  type        = string
  # default     = "" . ## Compartment where the resources needs to be crerated
}

variable "tenancy_ocid" {
  description = "OCI Tenancy OCID"
  type        = string
  # default = "" ## Tenancy OCID
}


variable "user_ocid" {
  description = "OCI User OCID"
  type        = string
  # default = ""  ##User OCID
}

variable "fingerprint" {
  description = "OCI API Key Fingerprint"
  type        = string
  # default = "" ## User Fingerprint
}

variable "private_key_path" {
  description = "Path to the private key file"
  type        = string
  # default     = "" ## Oracle Cloud private key File (Generated with API key)
}

variable "subnet_ocid" {
  description = "Predefined Subnet OCID"
  type        = string
  # default = "" ## Subnet OCID
}

variable "ubuntu_20_ocid" {
  description = "Ubuntu 20 ocid"
  type = string
  # default = "" ## VM image OCID
}

variable "vm_shape" {
  description = "VM shape"
  type = string
  # default = "" ## VM Shape
}

variable "ssh_key_path" {
  description = "SSH Key file path"
  type = string
  # default = "" ## SSH public key to access the VM
} 