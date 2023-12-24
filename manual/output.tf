output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "private_id" {
  value = [for id in module.subnets.subnet_type_id : id.id]
}



