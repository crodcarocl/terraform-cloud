module "web_alb" {
  source  = "../modules/alb"

  name               = var.alb_config.alb_name
  load_balancer_type = var.alb_config.load_balancer_type

  vpc_id             = module.vpc.vpc_id
  subnets            = module.vpc.public_subnets
  security_groups    = [module.web_sg.security_group_id]

  tags      = var.project_config.project_tags
  env_short = var.environment.env_short

  port = var.alb_config.alb_listener_port
  backend_port = var.alb_config.alb_tagergroup_port
}