output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "public_subnet_ids" {
  value = values(module.subnets)[*].id 
}


