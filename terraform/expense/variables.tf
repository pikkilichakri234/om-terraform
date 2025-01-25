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


variable "zone_id" {
    type = number
    default = "Z09912121MS725XSKH1TG"
    description = "to create the zone id"
}


variable "domain_name" {
    type = string
    default = "omnamahashivaya.online"
    description = "to create the domain"  
}