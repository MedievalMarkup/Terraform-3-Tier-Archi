output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "subnet_ids" {
  value = module.subnets.public_subnet_ids
}

output "eip_id" {
  value = module.elastic_ips.eip_id
}


