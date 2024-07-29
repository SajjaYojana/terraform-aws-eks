terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "daws-remote"
    key    = "aws-eks-sg"
    region = "us-east-1"
    dynamodb_table = "daws-remote"
  }
  module "ingress" {
    source = "git::https://github.com/username/repo.git?ref=main"
    # other module variables and configurations
  }


}

