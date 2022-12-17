terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-2"
  access_key = "A*****************"
  secret_key = "DZgy6U*******************"
}
resource "aws_instance" "Demo" {
  ami           = "ami-0b0dcb5067f052a63" # us-east-1: found in "quickstart" after selecting launch ec2 instance
  instance_type = "t2.micro"
  key_name = "4days" 
  tags = {
    Name = "Demo1"
  }
  
}
