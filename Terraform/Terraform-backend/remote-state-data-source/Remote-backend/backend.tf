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

terraform {
  backend "s3" {
    bucket = "class04-tf-state-bucket"
    key    = "terraform/terraform.tfstate"
    dynamodb_table = "terra-class04-lock"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "class04-tf-state-bucket" {
  bucket = "class04-tf-state-bucket"

  tags = {
    Name = "class04-tf-state-bucket"
    Environment = "DEV"
  }
}

resource "aws_dynamodb_table" "terra_lock" {
  name = "terra-class04-lock"
  hash_key = "LockID"
  read_capacity = 3
  write_capacity = 3 
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "Teraform-dyn-db-lock-table"
    Environment = "DEV"
  }
  lifecycle {
    prevent_destroy = false
  }
}