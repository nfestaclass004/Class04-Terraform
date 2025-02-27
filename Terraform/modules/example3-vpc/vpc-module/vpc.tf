#Create a VPC Terraform Module
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-dev"
  cidr = "10.0.0.0/16"

  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  single_nat_gateway  = true

  create_database_subnet_group           = true
  create_database_subnet_route_table     = true
  database_subnets    = ["10.0.21.0/24", "10.0.22.0/24"]

  enable_dns_hostnames  = true
  enable_dns_support = true

  public_subnet_tags = {
    type = "public-subnets"
  }

   private_subnet_tags = {
    type = "private-subnets"
  }

   database_subnet_tags = {
    type = "database-subnets"
  }
  tags = {
    Owner = "Nfesta"
    Environment = "dev"
  }
  vpc_tags = {
    Name = "dev-tf-vpc"
  }
}
