provider "aws" {
    region = "us-east-1"
}

module "ec2" {
    source = "./module"
    sg_id  = "module.sg.sgids"
}

module "sg" {
    source = "./sg"
}