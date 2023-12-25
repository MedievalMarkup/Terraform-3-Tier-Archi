resource "aws_nat_gateway" "test-nat" {
  for_each = {for id, subnet in var.public_ids: id => subnet}
  allocation_id = var.eip_alloc_id
  subnet_id = each.key
}