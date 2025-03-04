#vpc name
variable "vpc_name" {
  description = "This is the vpc name for all created resources"
  type = string
  default = "TestVpc-stndzed"
}

# Define the VPC cidr Block
variable "vpc_cidr_block" {
  description = "vpc cidr block"
  type = string
  default = "10.0.0.0/16"
}

#VPC Availability Zones
variable "vpc_availability_zones" {
  description = "vpc azs"
  type = list(string)
  default = ["us-west-2a", "us-west-2b"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Database Subnets
variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Create Database Subnet group (True or False)
variable "vpc_create_database_subnet_group" {
  description = "Create VPC Subnet Group"
  type = bool
  default = true
}

# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "Create VPC Subnet Route Table"
  type = bool
  default = true
}

# Enable VPC  NAT Gateway (True/False)
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT to allow outbound communication"
  type = bool
  default = true
}

# Create Single Nat Gateway (true or false)
variable "vpc_single_nat_gateway" {
    description = "Enable a single Nat Gateway in an az for cost optimisatoion"
    type = bool
    default = true
}
#Enable vpc dns (true or false)
variable "enable_dns_hostnames" {
  description = "Enabling the vpc dns hostname"
  type = bool
  default = true
}

variable "enable_dns_support" {
    type = bool
    default = true
}
