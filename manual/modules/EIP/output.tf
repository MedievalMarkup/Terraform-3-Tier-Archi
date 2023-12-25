output "eip_id" {
  value = [for id in aws_eip.nat_eip: id]
}