#VPC vars

variable "vpc_cidr_block" {
  description = "cidr for vpc"
  type = string
  default = "10.0.0.0/16"
}

#subnets
variable "list_of_subnets" {
  description = "list of vpc subnets"
  type = list(object({
    subnet_type = string
    cidr_block  = list(string)
    av_zone     = string
  }))
  default = [ 
    {
      subnet_type = "private"
      cidr_block = ["10.0.1.0/24", "10.0.2.0/24"]
      av_zone = "us-west-1"
    },
    {
      subnet_type = "public"
      cidr_block = ["10.0.101.0/24", "10.0.102.0/24"]
      av_zone = "us-west-1"
    },
    {
      subnet_type = "database"
      cidr_block = ["10.0.151.0/24", "10.0.152.0/24"]
      av_zone = "us-west-1"
    } 
  ]
}