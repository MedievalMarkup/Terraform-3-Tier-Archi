output "vpc_id" {
  value = module.VPC-Manual.vpc_id
}

output "subnet_ids" {
  value = [for s in data.aws_subnet.get_subnet_id : s.ids]
}


