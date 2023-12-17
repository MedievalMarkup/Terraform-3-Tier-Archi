output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "subnet_object" {
  value = [for key in local.get_product: keys(key)]
}

output "subnet_type" {
  value = local.final_subnet_type
}


