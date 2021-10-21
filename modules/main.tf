provider "aws" {
    region = "us-east-1"
}

module "ec2" {
    source = "./module"
}

module "ec2" {
    source = "./sg"
}