resource "aws_subnet" "vpc_01_pub-subnet" {
  vpc_id = aws_vpc.vpc_01.id
  cidr_block = var.pub_subnets_cidr[1]
  availability_zone = var.availability_zone[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "vpc_01_pub-subnet"
  }
}

resource "aws_subnet" "vpc_02_pub-subnet" {
  vpc_id = aws_vpc.vpc_01.id
  cidr_block = var.pub_subnets_cidr[0]
  availability_zone = var.availability_zone[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "vpc_02_pub-subnet"
  }
}