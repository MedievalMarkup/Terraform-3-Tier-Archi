output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "subnet_ids" {
  value = [for sub in module.subnets.public_subnet_ids: sub]
}


