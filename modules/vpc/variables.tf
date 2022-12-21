variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "project_config" {
    description = "Custom project configs"

    type = object ({
      tags = map(string)
      nat_gateway_tags = map(string)
    }) 
    
    default = {
       tags = {
         Environment  = "development",
         createdBy    = "crodcarocl",
         projectName  = "crodcaro-testing"
       }
       nat_gateway_tags = {
         Environment  = "development",
         createdBy    = "crodcarocl",
         projectName  = "crodcaro-testing"
       }
    }
}

variable "vpc_config" {
  description = "VPC Config variables"

  type = object ({
    name            = string
    cidr            = string
    azs             = list(string)
    private_subnets = list(string)
    public_subnets  = list(string)
  })
}