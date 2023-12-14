output "natG-id" {
  description = "id for nat-gateway"
  value = [for i in aws_nat_gateway.test-nat: id.id]
}