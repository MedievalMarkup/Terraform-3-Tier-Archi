output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "subnet_ids" {
  value = module.subnets.all_subnet_ids
}


