
output "public_subnet_id" {
  value = [for subnet in aws_subnet.aws_subnets : 
              subnet.tags != null && contains(keys(subnet.tags), "subnet_type") && subnet.tags["subnet_type"] == "public" ? subnet.id : null]
}