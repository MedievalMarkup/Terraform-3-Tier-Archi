locals {
  # non_null_private_id = [for id in local.private_ids: length(compact(id)) != 0 ? concat(id, []) : null]
  private_ids = [for id in module.subnets: id.private_subnet_ids]
  non_null_private_id = [for id in local.private_ids : id != null ? id : null]
  vpc_id = module.VPC-Manual.vpc_id
  subnet_object = {for i, subnet in var.list_private_subnets:  i => subnet}
  for_each = local.subnet_object
  cidr_list = each.value.cidr_block
  subnet_av_zone_list = each.value.av_zone
	subnet_type = each.value.subnet_type
	my_product = {for val in setproduct(local.cidr_list, local.subnet_av_zone_list): "${val[0]}-${val[1]}" => val}  
  # nat_gateway_id = [for id in module.module.NAT-Gateway : id.natG-id]
}
