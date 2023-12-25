resource "aws_nat_gateway" "test-nat" {
  for_each = toset(var.eip_alloc_id)
  allocation_id = each.key
  subnet_id = var.public_ids
}