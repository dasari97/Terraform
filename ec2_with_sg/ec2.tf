provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "instance1" {
  ami           = "ami-0e4e4b2f188e91845"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.new.id]
}

resource "aws_security_group" "1" {
  name        = "terraform"
  description = "Allow TLS inbound traffic"

  ingress = [
    {
      description      = "TLS from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = []
      self             = false
      security_groups  = []
    }
  ]

  egress = [
    {
      description      = "ALL"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = []
      self             = false
      security_groups  = []
    }
  ]

  tags = {
    Name = "new"
  }
}