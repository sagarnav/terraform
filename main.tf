terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"

}
#   Bootstrap EC2 Instance with user data

resource "aws_instance" "name" {
  ami = "ami-03a933af70fa97ad2"
  instance_type = "t2.medium"
  key_name = "Project"
  tags = {
    Name = "demo"
  }
}
