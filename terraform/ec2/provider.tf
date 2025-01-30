terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {    # terraform is aplugiin that enables interacton with api's
  region = "us-east-1"
}