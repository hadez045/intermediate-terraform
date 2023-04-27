# Define Local Values in Terraform 
# Owners are the org_pillar meaning who is the owner of this resource hence we are calling it
# name can be defined in one of the 2 ways mentioned below 
locals {
  owners = var.org_pillar
  environment = var.environment
  name = "${var.org_pillar}-${var.environment}"
  #name = "${local.owners}-${local.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
} 