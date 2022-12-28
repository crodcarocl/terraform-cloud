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

# SG variables

sg_config = {
  sg_name             = "dev-ecs-sg"
  ingress_rules       = ["http-80-tcp","http-8080-tcp", "https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules        = ["all-all"]
  egress_cidr_blocks  = ["0.0.0.0/0"]
}

# ALB variables

alb_config = {
    alb_name            = "development-ecs-loabalancer"
    load_balancer_type  = "application"
    alb_listener_port   = 80
    alb_tagergroup_port = 8080
    alb_target_type     = "ip"
}