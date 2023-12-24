# output "public_subnet_ids" {
#   value = aws_subnet.aws_subnets.tags_all["subnet_type"] == "public" ? "${aws_subnet.aws_subnets.id}" : null
# }
output "public_subnet_ids" {
  value = [for subnet in aws_subnet.aws_subnets: subnet.tags["subnet_type"] == "public" ? "${subnet.id}" : null]
}