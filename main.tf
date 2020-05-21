provider "linode" {}

resource "linode_instance" "test-instance" {
  label = "test-instance"
  image = "linode/centos7"
  region = "ap-south"
  type = "g6-nanode-1"
  authorized_keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCs6/lQI73Gsrrzyg01Vy5BKTN8/zNdSjwzqXZ6twWKOrpuf1ddvF9uESlqhkcH1may/mR2dbWvfkPpShAltjWCvYgO/+7/tHrMbr56dn8ivQuI3L4QfpCPEebduCQ38htSWr7PAX6QHCYqlvegz6w6gxMhXZ7BZDv/QSukWrPhvuv5y1lGPk1yJuuFPuDphzR5zaFFwsWt3qpHAvizsal9rtqnDhnuZwF0noWN8OM0gUEECFpqVjQOIv8f8sz+DCU8wBz1iyPENpcyconlvbC9h2Dpx6F3cHZMwWp4enIju0Fb96FTNWycC8o8jItDh2faMMgignGUx1B95JdrxAz1 t480-wsl"]
}

output "test_instance_ip_address" {
  value = linode_instance.test-instance.ip_address
}
