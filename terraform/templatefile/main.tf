terraform {
  required_version = ">= 0.12"
}

locals {
  generic_userdata = templatefile("${path.module}/userdata.tftpl", {
    is_k8s        = []
    instance_role = ""
  })

  k8s_userdata = templatefile("${path.module}/userdata.tftpl", {
    is_k8s        = ["true"]
    instance_role = "k8s"
  })

  special_userdata = templatefile("${path.module}/userdata.tftpl", {
    is_k8s        = []
    instance_role = "special"
  })
}

output "generic_userdata" {
  value = local.generic_userdata
}

output "k8s_userdata" {
  value = local.k8s_userdata
}

output "special_userdata" {
  value = local.special_userdata
}

output "token" {
  value = "asdfasdf"
}