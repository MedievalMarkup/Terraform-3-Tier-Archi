# output "id_private_subnets" {
#   value = [for i in aws_subnet.aws_subnets_private: i.id]
# }

output "subnet_type_id" {
  value = tomap("${join("\n", [for subnet in aws_subnet.aws_subnets : "${subnet.tags["subnet_type"]} = ${subnet.id}"])}")
}
