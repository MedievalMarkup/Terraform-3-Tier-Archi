output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "subnet_id" {
  value = module.subnets.public_subnet_id
}



