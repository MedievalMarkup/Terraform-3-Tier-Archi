output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

# output "subnet_ids" {
#   value = [for subnet in module.subnets: subnet.tags]
# }


