variable "tags" {
    description = "Custom project tags"
    type = map(string)
}

variable "nat_gateway_tags" {
    description = "Custom project tags"
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
  type = list(string)
}

variable "private_subnets" {
  description = "VPC private subnets"
  type = list(string)
}

variable "public_subnets" {
  description = "VPC private subnets"
  type = list(string)
}