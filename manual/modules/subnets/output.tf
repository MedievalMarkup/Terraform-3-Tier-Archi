output "subnet_type_id" {
  value = [for subnet in aws_subnet.aws_subnets : subnet.tags["subnet_type"] == "private" ? subnet.id : null]
}

# output "subnet_public_id" {
#   value = "${[for subnet in aws_subnet.aws_subnets : subnet.tags["subnet_type"] == "public" ? subnet.id : null]}"
# }

