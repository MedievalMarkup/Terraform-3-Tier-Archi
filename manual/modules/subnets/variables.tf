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

variable "subnet_obj" {
  description = "vpc id"
  type = list(object({
    subnet_type = string
    cidr_block = string
    av_zone = string
  }))
}
