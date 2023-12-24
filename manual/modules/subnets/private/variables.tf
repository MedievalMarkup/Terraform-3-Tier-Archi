variable "aws_vpc_id" {
  description = "vpc id"
  type = string
}

# variable "sub_av_zone" {
#   description = "vpc id"
#   type = string
# }

# variable "sub_cidr" {
#   description = "vpc id"
#   type = string
# }

# variable "subnet_type" {
#   description = "vpc id"
#   type = string
# }

variable "list_private_subnets" {
  description = "list_of_subnets"
  type = object({
    subnet_type = string
    cidr_block = list(string)
    av_zone = list(string)
  })
}
