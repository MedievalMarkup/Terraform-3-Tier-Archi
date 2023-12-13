output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "id_private_subnets" {
  value = [for id in module.subnets: id.subnet_type_id]
}