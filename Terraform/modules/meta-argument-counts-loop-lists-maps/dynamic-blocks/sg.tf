resource "aws_security_group" "class04-sg" {
  name = "class04_sg-01"
  dynamic "ingress" {
    iterator = port
    for_each = var.ingress
    content{
        from_port = port.value
        to_port = port.value
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    iterator = port
    for_each = var.egress
    content{
        from_port = port.value
        to_port = port.value
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
