resource "linode_instance" "test_instance" {
  label           = var.instance_label
  image           = var.instance_image
  region          = var.instance_region
  type            = var.instance_type
  authorized_keys = var.instance_authorized_keys
}

variable "instance_label" {
  type    = string
  default = "test"
}

variable "instance_type" {
  type    = string
  default = "g6-nanode-1"
}

variable "instance_image" {
  type    = string
  default = "linode/centos7"
}

variable "instance_region" {
  type    = string
  default = "ap-south"
}

variable "instance_authorized_keys" {
  type = list(string)
  default = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINxaX8X+5Bvk/2kQ7Lr4soe02RBIBhD3F6ryajvPUmjN t490-wsl"
  ]
}

output "instance_ipv4" {
  value = linode_instance.test_instance.ipv4
}

output "instance_ipv6" {
  value = linode_instance.test_instance.ipv6
}

