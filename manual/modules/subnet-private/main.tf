resource "aws_subnet" "aws_subnets_private" {
  for_each = toset(var.sub_cidr)
  vpc_id = var.aws_vpc_id
  cidr_block = each.key
  availability_zone = var.sub_av_zone
  tags = {
    subnet_type = var.subnet_type
  }
}