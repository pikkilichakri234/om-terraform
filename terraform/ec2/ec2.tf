resource "aws_instance" "terraform" {

    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = {
        Name = "terraform"
    }
}

resource "aws_security_group" "allow_ssh_terraform" {
    name        = "allow_sshh" #allow_ssh is already there in my account
    description = "Allow port number 22 for SSH access"

    # usually we allow everything in egress
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow_sshh"
    }
}


# target:- used to delete a specific resource

# single target:- terraform destroy -target=aws_instance.terraform[0]
# multi target:- terraform  destroy -target=aws_instance.terraform[1] -target=aws_instance.one[2]


# # taint :- it is used to recreate a specifi object in terraform  taint --> alternative ---> replace 

# command:- terraform taint aws_instance.terraform  terraform apply --auto-approve -replace="aws_instance.terraform"

# # untaint :- it is used to  can't recreate a specifi object in terraform 

# command:- terraform untaint aws_instance.terraform

