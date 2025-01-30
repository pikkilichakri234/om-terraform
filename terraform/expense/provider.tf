terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {    # terraform is a pluggin that enables interaction with API , provider acts as a intermediate between terraform and the underlying infrastructure.
  region = "us-east-1"
}