
output "public_subnet_id" {
  value = [for subnet in aws_subnet.aws_subnets : subnet.tags["subnet_type"] == "public" ? subnet.id : null if subnet.tags["subnet_type"] == "public"]
}