resource "aws_instance" "ec2-mod" {
  ami = data.aws_ami.amazon.id
  instance_type = var.instance_type
  tags = {
    Name = var.ec2name
  }
}
