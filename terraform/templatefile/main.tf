terraform {
  required_version = ">= 0.12"
}

locals {
  userdata = templatefile("${path.module}/userdata.tftpl", {
    is_k8s = []
  })
  k8s_userdata = templatefile("${path.module}/userdata.tftpl", {
    is_k8s = ["true"]
  })
}

output "non_k8s_userdata" {
  value = local.userdata  
}

output "k8s_userdata" {
  value = local.k8s_userdata  
}
