#creating an ec2 instance 
resource "aws_instance" "class04" {
  ami = data.aws_ami.amazon.id
  #instance_type = var.instance_type 
  #instance_type = var.instance_list_type[0] # when using list
  instance_type = var.instance_type_map["qa"] # when using map
  user_data = file("${path.module}/web-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [ aws_security_group.class04-sg.id ]
  count =3
  tags = {
    "Name" = "qa-web-${count.index}"
  }
}