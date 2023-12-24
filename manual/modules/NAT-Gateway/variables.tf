variable "eip_alloc_id" {
  description = ""
  type = string
}

variable "public_ids" {
  description = "Indicates if this EIP is for use in VPC"
  type = list(string)
}