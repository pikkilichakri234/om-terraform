variable "instance_names" {
    type = list(string)
    default = [ "mysql","backend","frontend" ]
    description = "create 3 instances"
}

variable "common_tags" {
    type = map
    default = {
        Project = "om-expense"
        Environment = "Dev"
        Terraform = "true"

    }
}