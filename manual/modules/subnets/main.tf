resource "aws_subnet" "aws_subnets" {
  for_each = {for i, v in var.subnet_obj:  i => v}
  vpc_id = var.aws_vpc_id
  cidr_block = each.value.cidr_block
  availability_zone = each.value.av_zone
  tags = {
    subnet_type = each.value.subnet_type
  }
}

