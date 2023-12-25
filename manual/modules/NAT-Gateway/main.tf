resource "aws_nat_gateway" "test-nat" {
  for_each = tomap(var.public_ids)
  allocation_id = var.eip_alloc_id
  subnet_id = each.key
}