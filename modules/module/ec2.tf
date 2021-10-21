resource "aws_instance" "instance1" {
  ami                    = "ami-0e4e4b2f188e91845"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.sg_id]
  tags                   = {
    Name                 = "instance1"
  }
}

variable "sg_id" {}