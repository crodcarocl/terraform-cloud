# VPC Variables
vpc_config = {
  vpc_name            = "development-vpc"
  vpc_cidr            = "10.0.0.0/16"
  vpc_azs             = ["us-east-1a","us-east-1b"]
  vpc_private_subnets = ["10.0.1.0/24","10.0.3.0/24"]
  vpc_public_subnets  = ["10.0.2.0/24","10.0.4.0/24"]
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
    alb_name           = "development-web-loabalancer"
    load_balancer_type = "application"
}

# ASG variables

asg_config = {
    asg_name      = "dev-web-asg"
    min_size      = 1
    max_size      = 1
    instance_type = "t3.nano"
}

# SG variables

sg_config = {
  sg_name             = "dev-web-sg"
  ingress_rules       = ["http-80-tcp", "https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules        = ["all-all"]
  egress_cidr_blocks  = ["0.0.0.0/0"]
}