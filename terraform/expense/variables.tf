# variables.tf : terraform we declare all the variables in a fie it is called variables.tf

# syntax:-
 
#  variable "variable-name" {
#    type =  ["string , list , bool , map , number"]  # different data types  , {}= map , []=list ,""=string , true or flase=bool , 1=number
#    default = "default-value"  # default value will pick terraform
#    description = "description about the in this specific datatypes"
#  }


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