output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "subnet_obj" {
  value = [for id in module.subnets.subnet_type_id : id]
}



