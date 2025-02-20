resource "aws_instance" "class04_server_01" {
  ami = data.aws_ami.amazon.id
  instance_type = var.instance_type[2]
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.class04-sg.id]
  tags = {
    "Name" = "class04_server_01"
  }
}