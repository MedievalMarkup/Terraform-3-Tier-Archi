
module "VPC-Manual" {
  source = "./modules/VPC"
  vpc_cidr_block = var.vpc_cidr_block
}

module "private_subnets" {
  source = "./modules/subnets/private"
  for_each = toset(var.list_private_subnets)
  aws_vpc_id = module.VPC-Manual.vpc_id
  list_private_subnets = each.value
  # sub_cidr = each.key["cidr_block"]
  # sub_av_zone = each.key["av_zone"]
  # subnet_type = each.key["subnet_type"]
}

# module "public_subnets" {
#   source = "./modules/subnets/public"
#   for_each = { for id, subnet in local.get_product: id => subnet }
#   aws_vpc_id = module.VPC-Manual.vpc_id
#   sub_cidr = each.key
#   sub_av_zone = each.value
#   subnet_type = tostring(local.final_subnet_type)
# }

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
