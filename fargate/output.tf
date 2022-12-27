output "environment_url" {
  value = module.ecs_alb.alb_environment_url
}

output "lb_arn" {
  value = module.ecs_alb.lb_arn
}

output "security_group_id" {
  value = module.ecs_sg.security_group_id
}