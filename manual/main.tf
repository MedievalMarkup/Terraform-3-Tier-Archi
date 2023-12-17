module "VPC-Manual" {
  source = "./modules/VPC"
  vpc_cidr_block = var.vpc_cidr_block
}

module "subnets" {
  source = "./modules/subnets"
  aws_vpc_id = module.VPC-Manual.vpc_id
  for_each = {for i, subnet in var.list_private_subnets:  i => subnet}
  sub_cidr = each.value.cidr_block
  sub_av_zone = each.value.av_zone
  subnet_type = each.value.subnet_type
}

locals {
  private_ids = [for id in module.subnets: id.private_subnet_ids]
  # non_null_private_id = [for id in local.private_ids: length(compact(id)) != 0 ? concat(id, []) : null]
  non_null_private_id = [for id in local.private_ids : id != null ? id : null]
  vpc_id = module.VPC-Manual.vpc_id
  # nat_gateway_id = [for id in module.module.NAT-Gateway : id.natG-id]
}

# module "NAT-Gateway" {
#   source = "./modules/NAT-Gateway"
#   private_ids = locals.non_null_private_id
# }

# module "internet-gateway" {
#   source = "./modules/Internet-Gateway"
#   vpc_id = local.vpc_id
# }

# module "route-tables" {
#   source = "./modules/RouteTables"
# }
