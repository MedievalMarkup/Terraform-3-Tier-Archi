locals {
#   # non_null_private_id = [for id in local.private_ids: length(compact(id)) != 0 ? concat(id, []) : null]
#   private_ids = [for id in module.subnets: id.private_subnet_ids]
#   non_null_private_id = [for id in local.private_ids : id != null ? id : null]

#   vpc_id = module.VPC-Manual.vpc_id

  # public_ids_map = {
  #   subnet1 = var.public_ids[0]
  #   subnet2 = var.public_ids[1]
  #   # Add statically defined keys for each public ID in var.public_ids
  #   # Adjust the keys according to your actual requirements
  # }

  eipb_obj = [for idx in compact(tolist(module.subnets.public_subnet_ids)) : {
    for eip in module.elastic_ips :  
      "${idx}-${eip}" => { 
        sub_id = idx
        eip_id = eip.eip_id
      }
  }]
#   eip_object_locals = {
#     for key, value in local.eip_object :
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
}
