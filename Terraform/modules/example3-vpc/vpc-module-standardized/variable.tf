#Input Variables

#AWS Region
variable "aws_region" {
  description = "This the region where AWS resources will be created"
  type = string
  default = "us-west-2"
}

#Environment Variable
variable "Environment" {
  description = "Environment Variable that will be used a prefix"
  type = string
  default = "dev"
}

#Business Unit
variable "business_unit" {
  description = "The business Unit where this resources belong"
  type = string
  default = "Marketing"
}

