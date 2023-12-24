
output "public_subnet_ids" {
  value = [for subnet in aws_subnet.aws_subnets: subnet.tags["subnet_type"] == "public" ? "${subnet.id}" : null]
}