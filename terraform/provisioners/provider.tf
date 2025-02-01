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


# version constraints :- changing the provider versions and update them

# # to upgrade the versions :- terraform init -upgrade
#  version = ">5.80.0" , version="<5.84.0", version="~>5.80.0" , version="~<5.70.0"

  