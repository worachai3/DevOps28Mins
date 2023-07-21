terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        # version = "~> 5.9.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
}

# Plan - execute

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-s3-bucket-in28minutes-worachai-002"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "my_s3_bucket_versioning" {
  value = aws_s3_bucket_versioning.versioning_example.versioning_configuration[0].status
}

output "my_s3_bucket_complete_details" {
  value = aws_s3_bucket_versioning.versioning_example
}