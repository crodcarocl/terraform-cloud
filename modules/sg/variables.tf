  variable "name" {
    description = "Security Group name"
    type = string
  }

  variable "vpc_id" {
    description = "VPC id"
    type = string
  }

  variable "ingress_rules" {
    description = "Ingress rules in the module format"
    type = list(string)
  }

  variable "ingress_cidr_blocks" {
    description = "Ingress cidr blocks"
    type = list(string)
  }

  variable "egress_rules" {
    description = "Egress rules in the module format"
    type = list(string)
  }

  variable "egress_cidr_blocks" {
    description = "Egress cidr blocks"
    type = list(string)
  }