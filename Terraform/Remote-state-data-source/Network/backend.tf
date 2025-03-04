#We are referencing an existing remote backend

terraform {
  backend "s3" {
    bucket = "class04-tf-state-bucket"
    key    = "Network/terraform.tfstate"
    dynamodb_table = "terra-class04-lock"
    region = "us-east-1"
  }
}