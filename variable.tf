
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