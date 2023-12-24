
output "public_subnet_ids" {
  value = values(module.subnets)[*].id 
}