output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "subnet_ids" {
  value = module.subnets.public_subnet_ids
}

output "eip_alloc_id" {
  value = {for i, v in module.elastic_ips: i => v.eip_id}
}


