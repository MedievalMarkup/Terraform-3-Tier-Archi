resource "aws_subnet" "aws_subnets" {
  vpc_id = var.aws_vpc_id
  cidr_block = var.sub_cidr
  availability_zone = var.sub_av_zone
  tags = {
    subnet_type = var.subnet_type
  }
}

locals {
  subnet_ids = {
    for subnet in aws_subnet.aws_subnets : subnet.id => subnet.id
  }
}