module "VPC-Manual" {
  source = "./modules/VPC"
  vpc_cidr_block = var.vpc_cidr_block
}

module "private_subnets" {
  source = "./modules/subnets/main-private.tf"
  aws_vpc_id = module.VPC-Manual.vpc_id
  for_each = {for i, subnet in var.list_private_subnets:  i => subnet}
  sub_cidr = each.value.cidr_block
  sub_av_zone = each.value.av_zone
  subnet_type = each.value.subnet_type
}

module "public_subnets" {
  source = "./modules/subnets/main-public.tf"
  aws_vpc_id = module.VPC-Manual.vpc_id
  for_each = {for i, subnet in var.list_public_subnets:  i => subnet}
  sub_cidr = each.value.cidr_block
  sub_av_zone = each.value.av_zone
  subnet_type = each.value.subnet_type
}

module "NAT-Gateway" {
  source = "./modules/NAT-Gateway"
}