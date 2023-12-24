
module "VPC-Manual" {
  source = "./modules/VPC"
  vpc_cidr_block = var.vpc_cidr_block
}


module "subnets" {
  source = "./modules/subnets"
  aws_vpc_id = module.VPC-Manual.vpc_id
  for_each = var.list_of_subnets
  subnet_obj = each.value
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
