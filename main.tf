provider "aws" {
  region = "us-east-1"
  
}

module "instance" {
  source = "./modules/ec2"
  ami_value = var.ami_value
  instance_type = var.instance_type
  }