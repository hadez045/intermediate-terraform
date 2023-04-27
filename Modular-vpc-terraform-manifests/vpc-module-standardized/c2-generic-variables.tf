# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = ""  
}
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = ""
}
# ORG Pillar
variable "org_pillar" {
  description = "The Organisational pillar who owns this resource"
  type = string
  default = "DB"
}
