#Data sources allow Terraform to fetch information from external systems or existing infrastructure managed outside Terraform.
 
#  Retrieve Existing Infrastructure :- resources like vpc, subnets, sg
#  Reference External Data:- Pull information like public AMIs, DNS records, or other resources.

data "aws_ami" "omnamahashivaya" {

	most_recent      = true
	owners = ["973714476881"]
	
	filter {
		name   = "name"
		values = ["RHEL-9-DevOps-Practice"]
	}
	
	filter {
		name   = "root-device-type"
		values = ["ebs"]
	}

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_vpc" "om_vpc" {
	default = true 
}