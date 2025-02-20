#Use this as part of your variable usage/expression testing for vpc creation.
resource "aws_vpc" "vpc_01" {
  cidr_block = var.vpc-cidr
  instance_tenancy = "default"

  tags = {
    Name = "vpc_01"
  }
}

resource "aws_internet_gateway" "vpc_01_IGW" {
  vpc_id = aws_vpc.vpc_01.id

  tags = {
    Name = "vpc_01_IGW"
  }
  depends_on = [ aws_vpc.vpc_01 ]
}
resource "aws_eip" "EIP" {
  tags = {
    Name = "EIP"
  }
}

output "vpcid" {
  value = aws_vpc.vpc_01.id
}