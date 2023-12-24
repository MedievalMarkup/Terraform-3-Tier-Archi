resource "aws_subnet" "aws_subnets" {
  vpc_id = var.aws_vpc_id
  dynamic "subnet" {
    for_each = var.list_private_subnets
    content {
      cidr_block = subnet.sub_cidr
      availability_zone = subnet.sub_av_zone
      tags = {
        subnet_type = subnet.subnet_type
      }  
    }
  }
}
