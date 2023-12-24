
module "VPC-Manual" {
  source = "./modules/VPC"
  vpc_cidr_block = var.vpc_cidr_block
}

module "subnets" {
  source = "./modules/subnets/"
  for_each = toset(var.list_of_subnets)
  aws_vpc_id = module.VPC-Manual.vpc_id
  sub_cidr = each.key["cidr_block"]
  sub_av_zone = each.key["av_zone"]
  subnet_type = each.key["subnet_type"]
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
