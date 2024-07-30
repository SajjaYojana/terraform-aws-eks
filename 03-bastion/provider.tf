terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "daws-remote"
    key    = "aws-eks"
    region = "us-east-1"
    dynamodb_table = "daws-remote"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}