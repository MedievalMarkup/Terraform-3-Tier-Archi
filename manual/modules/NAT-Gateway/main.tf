resource "aws_eip" "nat_eip" {
  domain           = var.eip_domain
}

resource "aws_nat_gateway" "test-nat" {
  for_each = toset(var.private_ids)
  allocation_id = aws_eip.nat_eip.id
  subnet_id = each.key
}