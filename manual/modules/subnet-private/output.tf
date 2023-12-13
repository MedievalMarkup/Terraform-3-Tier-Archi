output "id_private_subnets" {
  value = [for i in aws_subnet.aws_subnets_private: i.id]
}
