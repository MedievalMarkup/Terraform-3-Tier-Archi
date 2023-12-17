
module "VPC-Manual" {
  source = "./modules/VPC"
  vpc_cidr_block = var.vpc_cidr_block
}

# module "subnets" {
#   source = "./modules/subnets"
#   aws_vpc_id = module.VPC-Manual.vpc_id
#   for_each = {for i, subnet in var.list_private_subnets:  i => subnet}
#   sub_cidr = each.value.cidr_block
#   sub_av_zone = each.value.av_zone
#   subnet_type = each.value.subnet_type
# }

module "subnets" {
  source = "./modules/subnets"
  aws_vpc_id = module.VPC-Manual.vpc_id
  for_each = local.subnet_object_locals.my_product
  sub_cidr = each.value[0]
  sub_av_zone = each.value[1]
  subnet_type = local.subnet_object_locals.subnet_type
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
