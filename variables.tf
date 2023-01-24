# General

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "environment" {
  description = "Environment name"

  type = object ({
    env_name  = string
    env_short = string
  })
  
  default = {
    env_name  = "development"
    env_short = "devel"
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

# VPC Config

variable "vpc_config" {
  description = "VPC Config variables"

  type = object ({
    vpc_name            = string
    vpc_cidr            = string
    vpc_azs             = list(string)
    vpc_private_subnets = list(string)
    vpc_public_subnets  = list(string)
  })
}

# ALB Config

variable "alb_config" {
  description = "ALB Config variables"

  type = object ({
    alb_name            = string
    load_balancer_type  = string
    alb_listener_port   = number
    alb_tagergroup_port = number
    alb_target_type     = string
  })
}
# Autoscaling

variable "asg_config" {
  description = "ASG config variables"

  type = object ({
    asg_name      = string
    min_size      = number
    max_size      = number
    instance_type = string
  })
}

# Security Group

variable "sg_config" {
  description = "SG config variables"

  type = object ({
    sg_name             = string
    ingress_rules       = list(string)
    ingress_cidr_blocks = list(string)
    egress_rules        = list(string)
    egress_cidr_blocks  = list(string)
  })
}