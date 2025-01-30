# variable "instance_type" {
#     type = string
#     default = "t3.micro"
#     description = "to setup the instance-type" 
# }

variable "project" {
    type = string
    default = "expense"
    description = "to provide the specific project name" 
}

variable "environment" {
    type = string
    default = "backend"
    description = "to provide the specific project name" 
}

variable "component" {
    type = string
    default = "om"
    description = "to provide the specific project name" 
}

# variable "name-project" {
#     type = string
#     default = "${var.project}-${var.environment}-${var.component}"
#     description = "to provide the specific project-component-environment" 
# }