resource "aws_instance" "class04-server" {
  ami = data.aws_ami.amazon.id
  instance_type = var.dev_instance_type
  key_name = var.key_pair
}

resource "aws_instance" "class04-server02" {
  ami = data.aws_ami.amazon.id
  instance_type = var.dev_instance_type
  key_name = var.key_pair
}