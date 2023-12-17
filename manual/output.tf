output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "subnet_object" {
  value = {
    for id, key in local.local.get_product: id => key
  }
}

output "subnet_type" {
  value = local.final_subnet_type
}


