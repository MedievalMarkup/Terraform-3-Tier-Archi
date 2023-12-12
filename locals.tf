locals {
  owners = var.business_divsion
  environment = var.environment
  name = "${local.owners}-${local.environment}"
  common_tags = {
    owner = local.owners
    environment = local.environment
  }
}