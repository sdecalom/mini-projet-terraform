terraform {
  required_version = "1.8.6"
  required_providers {
    aws = {
        source = "harshicorp/aws"
        version = "4.61.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}