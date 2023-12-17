output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "subnet_object" {
  value = local.get_product
}


