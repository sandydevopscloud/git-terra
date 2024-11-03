resource "aws_subnet" "subnet-terra" {
  vpc_id                  = aws_vpc.vpc-terra.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-north-1a"

  tags = {
    Name = "subnet-terra"
  }
}
