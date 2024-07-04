terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.57.0"
    }
  }

}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-01b799c439fd5516a" 
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}
