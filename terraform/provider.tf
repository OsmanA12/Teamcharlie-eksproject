terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.77.0"
    }
  }
}

provider "aws" {
  # Configuration options
} 

#S3

resource "aws_s3_bucket" "example" {
  bucket = "2048-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

