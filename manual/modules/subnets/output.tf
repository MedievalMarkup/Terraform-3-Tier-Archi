output "id_private_subnets" {
  value = [for i, id in aws_subnet.aws_subnets_private: id.id]
}

output "id_public_subnets" {
  value = [for i, id in aws_subnet.aws_subnets_public: id.id]
}