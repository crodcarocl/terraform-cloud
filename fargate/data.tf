data "aws_lb_target_group" "ecs_tg" {
    filter {
        name  = target_type
        value = "ip"
    }
}