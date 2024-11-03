resource "aws_route_table" "rt-terra" {
  vpc_id = aws_vpc.vpc-terra.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-terra.id
  }

  tags = {
    Name = "rt-terra"
  }
}

resource "aws_route_table_association" "rta-terra" {
  subnet_id      = aws_subnet.subnet-terra.id
  route_table_id = aws_route_table.rt-terra.id
}
