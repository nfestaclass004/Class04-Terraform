#this would be the security group for our EC2s
resource "aws_security_group" "ec2_sg_01" {
name = "ec2_sg_01"
description = "internet reaching our ec2 instances"
vpc_id = "${aws_vpc.vpc_01.id}"
ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "http traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
tags = {
  Name = "ec2_sg_01"
}
}

resource "aws_security_group" "ec2_sg_02" {
name = "ec2_sg_02"
description = "internet reaching our ec2 instances"
vpc_id = "${aws_vpc.vpc_01.id}"
ingress {
    description      = "https traffic control"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
tags = {
  Name = "ec2_sg_02"
}
}