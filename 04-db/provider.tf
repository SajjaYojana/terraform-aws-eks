terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 2.49.0, < 6.0.0"
    }
  }
  backend "s3" {
    bucket = "daws-remote"
    key    = "expense-dev-db"
    region = "us-east-1"
    dynamodb_table = "daws-remote"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}