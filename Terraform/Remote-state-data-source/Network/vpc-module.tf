#Create a VPC Terraform Module
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  version = "~> 5.0"

  #VPC Basic Details
  name = "${local.Environment}-${var.business_unit}"
  cidr = "${var.vpc_cidr_block}"
  azs             = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  #Database Subnets
   database_subnets = var.vpc_database_subnets
   create_database_subnet_group = "${var.vpc_create_database_subnet_group}"
   create_database_subnet_route_table = "${var.vpc_create_database_subnet_route_table}"
  # NAT Gateway (to provide outbound traffic for private resoures to have acces for internet update)
  enable_nat_gateway = "${var.vpc_enable_nat_gateway}"
  single_nat_gateway  = "${var.vpc_single_nat_gateway}"

  /*create_database_subnet_group           = true
  create_database_subnet_route_table     = true
  database_subnets    = ["10.0.21.0/24", "10.0.22.0/24"]
  */
  enable_dns_hostnames  = "${var.enable_dns_hostnames}"
  enable_dns_support    = "${var.enable_dns_support}"

  tags = local.commom_tags
  vpc_tags = local.commom_tags


 # Additional tags to subnets
  public_subnet_tags = {
    type = "public-subnets"
  }

   private_subnet_tags = {
    type = "private-subnets"
  }

   database_subnet_tags = {
    type = "database-subnets"
  }
  
  }
