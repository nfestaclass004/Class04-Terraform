variable "region" {
  default = "us-east-1"
}

variable "ami" {
  default = "ami-085ad6ae776d8f09c"
}

variable "instance-type" {
  default = "t2.medium"
}

variable "vpc-cidr" {
  default = "10.50.0.0/16"
}

variable "sshAccess" {
  type = number
  default = 22
}

variable "enabled" {
  default = false
}

variable "pub_subnets_cidr" {
  type = list
  default = ["10.50.0.0/24", "10.50.1.0/24", "10.50.2.0/24"]
}

variable "priv_subnets_cidr" {
  type = list
  default = ["10.50.3.0/24", "10.50.4.0/24", "10.50.5.0/24"]
}

variable "private_subnets" {
  type = map
  default = {
    key1 = "subnet1"
    key2 = "subnet2"
    key3 = "subnet3"
  }
}

#variable "privideInputName" {
#  type = string
#  description = "Give your desired ResourceName"
#}

variable "availability_zone" {
  type = list
    default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "key_pair" {
  default = "maven-class02-key"
}