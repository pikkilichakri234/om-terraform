terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "trilokeshayanamaha"
    key    = "om-workspaces"
    region = "us-east-1"
    dynamodb_table = "om-workspace-table"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}