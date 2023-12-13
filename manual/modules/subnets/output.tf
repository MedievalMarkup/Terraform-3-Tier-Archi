output "subnet_type_id" {
  value = "${[for subnet in aws_subnet.aws_subnets : "${subnet.tags["subnet_type"]} = ${subnet.id}"]}"
}
