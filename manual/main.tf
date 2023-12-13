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