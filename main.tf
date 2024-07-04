

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
