module "web_alb" {
  source  = "./modules/alb"

  name               = var.alb_config.alb_name "web-loadblancer"
  load_balancer_type = var.alb_config.load_balancer_type "application"

  tags = var.project_config.tags
  env_name = var.environment.env_name
}