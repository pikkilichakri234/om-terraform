module "ec2" {
    source = "../terraform-aws-ec2-module"
    sg_id = "sg-08134cfe0f2e7d9f1"
    instance_type = "t3.micro"
}

output "public_ip" {
    value = module.ec2.public_ip 
}

output "private_ip" {
    value = module.ec2.private_ip 
}

