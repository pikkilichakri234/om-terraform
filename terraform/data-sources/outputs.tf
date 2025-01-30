output "ami_id" {
    value = data.aws_ami.omnamahashivaya.id
}

output "vpc_id" {
  value = data.aws_vpc.om_vpc.id
}