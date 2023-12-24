# locals {
#   # non_null_private_id = [for id in local.private_ids: length(compact(id)) != 0 ? concat(id, []) : null]
#   private_ids = [for id in module.subnets: id.private_subnet_ids]
#   non_null_private_id = [for id in local.private_ids : id != null ? id : null]

#   vpc_id = module.VPC-Manual.vpc_id

#   subnet_object = {for i, subnet in var.list_private_subnets:  i => subnet}
#   subnet_object_locals = {
#     for key, value in local.subnet_object :
#     key => {
#       cidr_list = value.cidr_block
#       subnet_av_zone_list = value.av_zone
#       subnet_type = value.subnet_type
#       my_product = zipmap(value.cidr_block, value.av_zone)
#     }
#   }
#   final_subnet_type = [for obj in local.subnet_object_locals: obj.subnet_type]
# 	get_product = [for obj in local.subnet_object_locals: obj.my_product]
  
#   # nat_gateway_id = [for id in module.module.NAT-Gateway : id.natG-id]
# }
