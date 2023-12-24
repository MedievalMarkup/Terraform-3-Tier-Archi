# output "subnet_type_id" {
#   value = "${[for subnet in aws_subnet.aws_subnets : "${subnet.tags["subnet_type"]} = ${subnet.id}"]}"
# }

output "private_subnet_ids" {
  value = [for subnet in aws_subnet.aws_subnets : subnet.tags["subnet_type"] == "private" ? subnet.id : null]
}

