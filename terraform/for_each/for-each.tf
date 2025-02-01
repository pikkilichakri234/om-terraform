# resource "aws_instance" "om-for-each" {
#     for_each = var.for_each
#     ami = each.value.ami # this AMI ID may change over the time
#     instance_type = each.avlue.instance_type
#     tags = {
#         Name = each.key
#     }
  
# }

# variable "for_each" {
#     type = map(object({
#         ami =string
#         instance_type =string
#     }))

#     default = {
#         "web1" = {ami="ami-12345", instance_type="t2.micro"}
#         "web2" = {ami="ami-9089", instance_type="t3.micro"}
#     }
#     description = "create  multiple objects in our for_each"
  
# }

# # create multiple security groups using a set

# resource "aws_security_group" "om-sg" {
#     for_each = var.om-sg
#     name = each.value
#     description = "description for a security group in ${each.value}"
  
# }

# variable "om-sg" {
#     type = set(string)
#     default = ["frontend" "backend" "mysql"]
#     description = "create multiple security groups"
# }