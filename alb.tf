module "web_alb" {
  source  = "./modules/alb"

  name               = var.alb_config.alb_name
  load_balancer_type = var.alb_config.load_balancer_type

  tags = var.project_config.tags
  env_name = var.environment.env_name
}