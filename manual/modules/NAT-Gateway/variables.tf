variable "eip_domain" {
  description = "Indicates if this EIP is for use in VPC"
  type = string
  default = "vpc"
}

variable "public_ids" {
  description = "Indicates if this EIP is for use in VPC"
  type = list(string)
}