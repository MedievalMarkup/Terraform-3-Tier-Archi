module "VPC-Manual" {
  source = "./modules/VPC"
  vpc_cidr_block = var.vpc_cidr_block
}

module "subnets" {
  source = "./modules/subnets"
  aws_vpc_id = module.VPC-Manual.vpc_id
  for_each = toset(var.list_of_subnets)
  sub_cidr = each.key.cidr_block
  sub_av_zone = each.key.av_zone
  subnet_type = each.key.subnet_type
}