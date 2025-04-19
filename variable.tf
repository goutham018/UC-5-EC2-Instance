variable "aws_region" {
  description = "The AWS region to deploy the resources in."
  type        = string
  default     = "us-east-1"
  
}

variable "ami_value" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-084568db4383264d4" # Example AMI ID for Amazon Linux 2 in us-east-1    
  
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro" # Example instance type
  
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access"
  type        = string
  default     = "aws-login" # Replace with your key pair name
  
}