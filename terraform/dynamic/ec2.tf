resource "aws_instance" "this" {
  ami                    = "ami-09c813fb71547fc4f" # This is our devops-practice AMI ID
  vpc_security_group_ids = [aws_security_group.allow_omtls.id]
  instance_type          = "t3.micro"
  tags = {
    Name    = "terraform-demo"
    Purpose = "terraform-practice"
  }
}

resource "aws_security_group" "allow_omtls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  dynamic "ingress" { # Terraform will give you a keyword with the block name. You can iterate using ingress.
    for_each = var.ingress_rules
    content{
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value["to_port"]
      protocol    = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_shivayatls"
  }
}

# dynamic block used in to dynamically create in our objects in specific resource , reduce the length of code & reusable
# loops it is used to create multiple resources
# dynamic blocks are used to create multiple blocks in a resource

# count is use it to iterate lists
# for each is use it to iterate maps
