output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "private_id" {
  value = [for id in module.subnets.subnet_private_id : id]
}

# output "subnet_object" {
#   value = local.get_product
# }

# output "subnet_type" {
#   value = local.final_subnet_type
# }


