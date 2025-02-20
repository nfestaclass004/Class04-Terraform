provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terra_instance_02" {
  ami = data.aws_ami.amazon.id
  instance_type = var.instance-type
  user_data = file("${path.module}/userdata.sh")
  vpc_security_group_ids = ["${aws_security_group.ec2_sg_01.id}","${aws_security_group.ec2_sg_02.id}"]
  subnet_id = "${aws_subnet.vpc_01_pub-subnet.id}"
  key_name = var.key_pair

  tags = {
    Name = "terra_instance_02"
  }
}

resource "aws_instance" "terra_instance_03" {
  ami = data.aws_ami.amazon.id
  instance_type = var.instance-type
  user_data = file("${path.module}/userdata.sh")
  vpc_security_group_ids = ["${aws_security_group.ec2_sg_01.id}", "${aws_security_group.ec2_sg_02.id}"]
  subnet_id = "${aws_subnet.vpc_02_pub-subnet.id}"
  key_name = var.key_pair

  tags = {
    Name = "terra_instance_03"
  }
}

resource "aws_instance" "terra_instance_04" {
  ami = var.ami
  instance_type = var.instance-type
  user_data = file("${path.module}/userdata.sh")
  vpc_security_group_ids = ["${aws_security_group.ec2_sg_01.id}", "${aws_security_group.ec2_sg_02.id}"]
  subnet_id = "${aws_subnet.vpc_02_pub-subnet.id}"
  key_name = var.key_pair

  tags = {
    Name = "terra_instance_04"
  }
}

output "instance_id" {
  value = aws_instance.terra_instance_02.id
}
output "instance2_id" {
  value = aws_instance.terra_instance_03.id
}

output "instance3_id" {
  value = aws_instance.terra_instance_04
}