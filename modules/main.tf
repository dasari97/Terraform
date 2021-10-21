provider "aws" {
    region = "us-east-1"
}

module "ec2" {
    source = "./module"
    id  = module.sg.sg_id
}

module "sg" {
    source = "./sg"
}