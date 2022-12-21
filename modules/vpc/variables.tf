variable "environment" {
    description = "Environment name"

    type = object ({
      env_name = string
    })
    default = {
      env_name = "development"
    }
}

variable "project_config" {
    description = "Custom project configs"

    type = object ({
      project_tags = map(string)
    }) 
    
    default = {
      project_tags = {
        Environment  = "development",
        createdBy    = "crodcarocl",
        projectName  = "crodcaro-testing"
       }
    }
}

variable "vpc_configs" {
  description = "VPC Config variables"

  type = object ({
    vpc_name            = string
    vpc_cidr            = string
    vpc_azs             = list(string)
    vpc_private_subnets = list(string)
    vpc_public_subnets  = list(string)
  })
}