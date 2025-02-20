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

variable "instance_type" {
  description = "for our ec2 instance type"
  type = list(string)
  default = [ "t2.micro", "t2.medium", "t2.large"]
} 

variable "region" {
    type = string
    default = "us-east-1"
}