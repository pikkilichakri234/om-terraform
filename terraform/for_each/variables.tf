variable  "instances" {
  type        = map
  default     = {
    mysql = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "domain_name" {
  default = "omnamahashivaya.online"
}

variable "zone_id" {
  default = "Z04209161L97VM4X8NVAS"
}