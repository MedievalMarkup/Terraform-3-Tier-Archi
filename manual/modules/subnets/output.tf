
output "public_subnet_id" {
  value = tomap([for subnet in aws_subnet.aws_subnets: subnet.tags])
}