module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 8.0"

  name               = "${var.name}"
  load_balancer_type = var.load_balancer_type

  vpc_id             = var.vpc_id
  subnets            = var.subnets
  security_groups    = var.security_groups

  target_groups = [
    {
      name_prefix      = "${var.env_short}-"
      backend_protocol = "HTTP"
      backend_port     = var.backend_port
      target_type      = "instance"
    }
  ]

  http_tcp_listeners = [
    {
      port               = var.port
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  tags = var.tags
}