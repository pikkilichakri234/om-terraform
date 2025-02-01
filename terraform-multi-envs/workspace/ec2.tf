resource "aws_instance" "terraform" {
    #count = terraform.workspace == "prod" ? 2 : 1
    ami = "ami-09c813fb71547fc4f"
    instance_type = lookup(var.instance_type, terraform.workspace)
    vpc_security_group_ids = ["sg-01d297f4b92c7ba3a"]
    tags = {
        Name = "terraform-${local.env}"
    }
}