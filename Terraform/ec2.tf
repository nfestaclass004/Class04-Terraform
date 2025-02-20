provider "aws" {
  region = "us-east-1"
  #profile = "default"
}

resource "aws_instance" "terra_instance-01" {
  ami = "ami-0c7af5fe939f2677f"
  instance_type = "t2.micro"

  tags = {
    "Name" = "terra_instance-01"
  }
}

resource "aws_security_group" "alb_sg_01" {
  name = "alb_sg_01"
  description = "for alb traffic"
  vpc_id = "vpc-24c76159"
  ingress = {
    from_port = 22
    to_prot = 22
    protocol = "tcp"
    cidr_block = ["0.0.0.0/0"]
  }
}

resource "aws_alb" "alb_01" {
  depends_on = [ aws_security_group.alb_sg_01 ]
}