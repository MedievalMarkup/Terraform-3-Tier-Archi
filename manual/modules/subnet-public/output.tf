output "id_public_subnets" {
  value = [for i in aws_subnet.aws_subnets_public: i.id]
}