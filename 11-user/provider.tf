terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket         = "brahmam005-state-dev"
    key            = "user"
    region         = "us-east-1"
    dynamodb_table = "brahmam005-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}