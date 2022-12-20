module "autoscaling" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "6.7.0"
  # insert the 1 required variable here

  name = "web"
  min_size = 1
  max_size = 2

  vpc_zone_identifier = module.vpc.public_subnets
  target_group_arns = module.web_alb.target_group_arns
  security_groups = [module.web_sg.security_group_id]

  image_id           = data.aws_ami.app_ami.id
  instance_type = var.instance_type
}