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
  region  = "ap-northeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0bbc954141b39fb71"
  instance_type = "t2.micro"
  subnet_id = "subnet-02db9680568fe55ec"
  vpc_security_group_ids = ["sg-08397feb97a4ff549"]

  tags = {
    Name = "Terraform_Test_EC2"
  }
}
