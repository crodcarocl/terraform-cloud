data "ecs_alb" "ecs_tg" {
    filter {
        name  = target_type
        value = "ip"
    }
}