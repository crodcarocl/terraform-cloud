# VPC Variables
vpc_name = "vpc"
vpc_cidr = "10.0.0.0/16"
vpc_azs = ["us-east-1a","us-east-1b"]
vpc_private_subnets = ["10.1.0.0/24","10.3.0.0/24"]
vpc_public_subnets = ["10.1.0.0/24","10.3.0.0/24"]

env_name = "development"

project_tags = {
    Environment  = "development",
    creationDate = timestamp(),
    createdBy    = "crodcarocl"
    projectName  = "crodcaro-testing"
}