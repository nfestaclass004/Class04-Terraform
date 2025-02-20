resource "aws_route_table" "pub_rtb_01" {
  vpc_id = "${aws_vpc.vpc_01.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_01_IGW.id
  }

  tags = {
    Name = "pub_rtb_01"
  }
}

resource "aws_route_table_association" "pub_rtb_association" {
  route_table_id = aws_route_table.pub_rtb_01.id
  subnet_id = aws_subnet.vpc_01_pub-subnet.id
  depends_on = [ aws_subnet.vpc_01_pub-subnet,aws_route_table.pub_rtb_01 ]
}

resource "aws_route_table_association" "pub_rtb_association02" {
  route_table_id = aws_route_table.pub_rtb_01.id
  subnet_id = aws_subnet.vpc_02_pub-subnet.id
  depends_on = [ aws_subnet.vpc_02_pub-subnet,aws_route_table.pub_rtb_01 ]
}