variable "compartment_ocid" {}
variable "region" {}
variable "display_name_prefix" {}

provider "oci" {
  region = "${var.region}"
}

resource "oci_core_virtual_network" "vcn1" {
  cidr_block = "10.0.0.0/16"
  dns_label = "vcn1"
  compartment_id = "${var.compartment_ocid}"
  display_name = "${var.display_name_prefix}-VCN - GIT_CONFIG_SOURCE - Rollback Test- Job 2"
}

terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}