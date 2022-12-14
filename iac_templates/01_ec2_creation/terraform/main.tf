terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}


provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "test_server" {
  ami           = "ami-0568773882d492fc8"
  instance_type = "t2.micro"

  tags = {
    Name = "Test ec2"
  }
}