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

module "ec2module" {
    source = "./ec2"
    ec2name = "module-ec2"
}

output "module-ec2-output" {
  value = module.ec2module.instance_id
}