
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
  count  = length(module.subnets.public_subnet_ids)
}

module "NAT-Gateway" {
  source = "./modules/NAT-Gateway"
  for_each = toset(module.elastic_ips.eip_id)
  public_ids = module.subnets.public_subnet_ids
  eip_alloc_id = each.key
}

module "internet-gateway" {
  source = "./modules/Internet-Gateway"
  vpc_id = module.VPC-Manual.vpc_id
}

# module "route-tables" {
#   source = "./modules/RouteTables"
# }
