#Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" 
      version = "~> 5.0" # meaning any version equal and above 5.0
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "db" {
  source = "./db"
}

module "web" {
  source = "./web"
}

output "PrivateIP" {
  value = module.db.PrivateIP
}

output "publiIP" {
  value = module.web.pub_ip
}