output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "id_private_subnets" {
  value = [for id in module.subnets: lookup(id.id_private_subnets, "private", null)]
}

output "id_public_subnets" {
  value = [for id in module.subnets: id.subnet_public_id]
}