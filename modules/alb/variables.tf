variable "vpc_id" {
    description = "Loadbalancer VPC"
    type = string
}

variable "subnets" {
    description = "Loadbalancer subnets"
    type = list(string)
}

variable "security_groups" {
    description = "Loadbalancer security groups"
    type = list(string)
}

variable "name" {
    description = "Loadbalancer Name"
    type = string
}

variable "env_short" {
    description = "Environment Name"
    type = string
}

variable "load_balancer_type" {
    description = "Loadbalancer Type"
    type = string
}

variable "tags" {
    description = "Custom Project Tags"
    type = map(string)
}