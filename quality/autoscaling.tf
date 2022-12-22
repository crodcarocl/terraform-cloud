module "autoscaling" {
  source  = "./modules/asg"

  name     = var.asg_config.asg_name
  min_size = var.asg_config.min_size
  max_size = var.asg_config.max_size

  vpc_zone_identifier = module.vpc.private_subnets
  target_group_arns   = module.web_alb.target_group_arns
  security_groups     = [module.web_sg.security_group_id]

  image_id      = data.aws_ami.app_ami.id
  instance_type = var.asg_config.instance_type
}