data "aws_lb_target_group" "ecs_tg" {
    arn  = module.ecs_alb.target_group_arns[0]
}