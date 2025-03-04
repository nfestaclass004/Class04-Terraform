# VPC OutPut Values

# VPC ID
output "vpc_id" {
  description = "The ID of our referrence VPC"
  value = module.vpc.vpc_id
}

# VPC CIDR Blocks
output "vpc_cidr_block" {
  description = "The cidr block of our referrence VPC"
  value = module.vpc.vpc_cidr_block
}

#VPC Private subnets
output "private_subnets" {
  description = "The private subnets IDs from our referrence VPC"
  value = module.vpc.private_subnets
}

#VPC Public subnets
output "public_subnets" {
  description = "The public subnets IDs from our referrence VPC"
  value = module.vpc.public_subnets
}

# VPC NAT gateway Public IP
output "nat_public_ips" {
  description = "List of public Elastic IPs created for our AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}


# VPC AZs
output "azs" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}