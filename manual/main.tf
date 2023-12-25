
module "VPC-Manual" {
  source = "./modules/VPC"
  vpc_cidr_block = var.vpc_cidr_block
}

module "subnets" {
  source = "./modules/subnets"
  aws_vpc_id = module.VPC-Manual.vpc_id
  subnet_obj = var.list_of_subnets
}

module "elastic_ips" {
  source = "./modules/EIP"
  count  = var.count_of_eips
}

module "NAT-Gateway" {
  source = "./modules/NAT-Gateway"
  # for_each = toset(module.subnets.public_subnet_ids)
  public_ids = module.subnets.public_subnet_ids
  eip_alloc_id = values([for i in module.elastic_ips: i.eip_id])
}

# module "internet-gateway" {
#   source = "./modules/Internet-Gateway"
#   vpc_id = module.VPC-Manual.vpc_id
# }

# module "route-tables" {
#   source = "./modules/RouteTables"
# }
