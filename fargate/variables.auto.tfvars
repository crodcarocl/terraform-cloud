# VPC Variables
vpc_config = {
  vpc_name            = "development-vpc"
  vpc_cidr            = "10.0.0.0/16"
  vpc_azs             = ["us-east-1a","us-east-1b"]
  vpc_private_subnets = ["10.0.1.0/24","10.0.3.0/24"]
  vpc_public_subnets  = ["10.0.2.0/24","10.0.4.0/24"]
}

# Project Variables

environment = {
  env_name  = "development"
  env_short = "devel"
}

project_config = {
  project_tags = {
    Environment  = "development",
    createdBy    = "crodcarocl"
    projectName  = "crodcaro-testing"
  }
}