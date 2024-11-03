resource "aws_instance" "inst-1" {
  ami                         = "ami-070fe338fb2265e00"
  availability_zone           = "eu-north-1a"
  instance_type               = "t3.micro"
  key_name                    = "sandy-pem"
  subnet_id                   = aws_subnet.subnet-terra.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = "true"

  tags = {
    Name       = "PRD-SRV"
    Env        = "PRD"
    Owner      = "Sandy"
    Costcenter = ""
  }
}
