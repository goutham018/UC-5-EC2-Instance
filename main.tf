terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

}

module "instance" {
  source        = "./modules/ec2"
  ami_value     = var.ami_value
  instance_type = var.instance_type
}