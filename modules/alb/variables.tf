variable "name" {
    description = "Loadbalancer Name"
    type = string
}

variable "env_name" {
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