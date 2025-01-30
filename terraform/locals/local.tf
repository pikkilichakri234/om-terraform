locals {
  ami_id = data.aws_ami.omnamahashivaya.id
  instance_type = t3.micro
  name = "${var.project}-${var.environment}-${var.component}"
}