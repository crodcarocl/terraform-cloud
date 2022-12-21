variable "tags" {
    description = "Custom project configs"
    type = map(string)
}

variable "name" {
  description = "VPC project name"
  type = string
}

variable "cidr" {
  description = "VPC cidr address"
  type = string
}

variable "azs" {
  description = "VPC availability zones"
  type = string
}

variable "private_subnets" {
  description = "VPC private subnets"
  type = string
}

variable "public_subnets" {
  description = "VPC public subnets"
  type = string
}