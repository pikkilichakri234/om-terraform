terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }


  backend "s3" {
    bucket = "omshivamayam-devops82s"
    key    = "omnamahashivaya-key"  # you should have unique keys with in the bucket , same key should not used other projects
    region = "us-east-1"
    dynamodb_table = "omshivaya-devops-locking"
 }
}

provider "aws" {
   region = "us-east-1"
}