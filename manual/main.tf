
module "VPC-Manual" {
  source = "./modules/VPC"
  vpc_cidr_block = var.vpc_cidr_block
}


module "subnets" {
  source = "./modules/subnets"
  for_each = {for i, v in var.list_of_subnets:  i => v}
  aws_vpc_id = module.VPC-Manual.vpc_id
  sub_cidr = each.value.cidr_block
  sub_av_zone = each.value.av_zone
  subnet_type = each.value.subnet_type
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
