# VPC Variables
vpc_config = {
  vpc_name            = "quality-vpc"
  vpc_cidr            = "172.0.0.0/16"
  vpc_azs             = ["us-east-1a","us-east-1b"]
  vpc_private_subnets = ["172.0.1.0/24","172.0.3.0/24"]
  vpc_public_subnets  = ["172.0.2.0/24","172.0.4.0/24"]
}

environment = {
  env_name  = "quality"
  env_short = "qa"
}

project_config = {
  project_tags = {
    Environment  = "quality",
    createdBy    = "crodcarocl"
    projectName  = "crodcaro-testing"
  }
}

# ALB variables

alb_config = {
    alb_name            = "development-web-loabalancer"
    load_balancer_type  = "application"
    alb_listener_port   = 80
    alb_tagergroup_port = 80
    alb_target_type     = "ip"
}

# ASG variables

asg_config = {
    asg_name      = "qa-web-asg"
    min_size      = 1
    max_size      = 1
    instance_type = "t3.nano"
}

# SG variables

sg_config = {
  sg_name             = "qa-web-sg"
  ingress_rules       = ["http-80-tcp", "https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules        = ["all-all"]
  egress_cidr_blocks  = ["0.0.0.0/0"]
}