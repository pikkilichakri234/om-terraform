variable "ingress_rules" {
    type =list(object({      # structured list
        from_port = number
        to_port = number
        protocol = string
        cidr_blocks = list(string)
        description = string
    }))

    default = [
        {
          from_port=22
          to_port=22
          protocol= "tcp"
          cidr_blocks=["0.0.0.0/0"]
          description="opening 22"
        },

        {
         from_port=80
         to_port=80
         protocol= "tcp"
         cidr_blocks=["0.0.0.0/0"]
         description="opening 80"

        },

        {
         from_port=8080
         to_port=8080
         protocol="tcp"
         cidr_blocks=["0.0.0.0/0"]
         description="opening 8080"

        }
    ]
  
}