output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

# output "id_private_subnets" {
#   value = [for id in module.subnets: id.private_subnet_ids]
# }

output "length" {
  value = local.non_null_private_id
}

# output "id_public_subnets" {
#   value = [for id in module.subnets: id.subnet_public_id]
# }