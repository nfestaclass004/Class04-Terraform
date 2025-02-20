resource "aws_instance" "web" {
  ami = data.aws_ami.amazon.id
  instance_type = "t2.micro"
  key_name = "maven-key"
  security_groups = [ module.sg.sg_name ]
  user_data = file("./web/webscript.sh")
  tags = {
    Name = "web-server"
  }
}

output "pub_ip" {
  value = module.eip.PublicIP
}

module "eip" {
  source = "../eip"
  instance_id = aws_instance.web.id
}

module "sg" {
  source = "../sg"
}