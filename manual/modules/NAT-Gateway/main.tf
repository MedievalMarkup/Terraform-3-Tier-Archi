# Define a static map for for_each with known keys
locals {
  public_ids_map = {
    subnet1 = var.public_ids[0]
    subnet2 = var.public_ids[1]
    # Add statically defined keys for each public ID in var.public_ids
    # Adjust the keys according to your actual requirements
  }
}

resource "aws_nat_gateway" "test-nat" {
  for_each = local.public_ids_map
  allocation_id = var.eip_alloc_id
  subnet_id     = each.value
}