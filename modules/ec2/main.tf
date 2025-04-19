resource "aws_instance" "sample_instance" {
  ami           = var.ami_value
  instance_type = var.instance_type
  
  tags = {
    Name = "SampleInstance"
  }

  
user_data = <<-EOF
 #!/bin/bash
 sudo apt-get update -y
 sudo apt-get install -y docker.io nginx
 sudo systemctl start docker
 sudo systemctl enable docker
 sudo systemctl start nginx
 sudo systemctl enable nginx
 EOF
security_groups = [aws_security_group.my-sg.name]
  key_name = "aws-login" # Replace with your key pair name
}

resource "aws_security_group" "my-sg" {
    name        = "my_security_group"
    description = "Allow SSH and HTTP traffic"
    
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
  
}
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}