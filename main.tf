terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "jenkins-resource-test-bucket" 

  tags = {
    Name        = "jenkins-resource-test-bucket"
    Environment = "Dev"
  }
}
