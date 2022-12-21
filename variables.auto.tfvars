# VPC Variables
vpc_config = {
  vpc_name = "vpc"
  vpc_cidr = "10.0.0.0/16"
  vpc_azs = ["us-east-1a","us-east-1b"]
  vpc_private_subnets = ["10.1.0.0/24","10.3.0.0/24"]
  vpc_public_subnets = ["10.2.0.0/24","10.4.0.0/24"]
}

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

# ALB variables

alb_config = {
    alb_name = "web-loabalancer"
    load_balancer_type = "application"
}