resource "aws_instance" "instance1" {
  ami                    = "ami-0e4e4b2f188e91845"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.A.id]
  tags                   = {
    Name                 = "instance1"
  }
}