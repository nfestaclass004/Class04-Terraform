variable "ingress" {
  type = list(number)
  default = [ 22,80,443,8080,9000,6379 ]
}

variable "egress" {
  type = list(number)
  default = [ 22,80,443,8080,9000,6379,9001 ]
}

variable "instance_keypair" {
  type = string
  default = "maven-key"
}

variable "instance_list_type" {
  description = "for our ec2 instance type"
  type = list(string)
  default = [ "t2.micro", "t2.medium", "t2.large"]
} 

variable "region" {
    type = string
    default = "us-east-1"
}

variable "instance_type_map" {
  description = "ec2 instance type using map"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qa"  = "t2.medium"
    "prod" = "t2.large"
  }
}

variable "instance_type" {
  type = string
  default = "t2.small"
}
