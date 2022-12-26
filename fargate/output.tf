output "environment_url" {
    value = module.ecs_alb.alb_environment_url
}

output "security_group_id" {
    value = module.ecs_sg.security_group_id
}

output "ecs_cluster_arn" {
    value = module.ecs.cluster_arn
}

output "ecs_cluster_name" {
    value = module.ecs.cluster_name
}

# output "aws_ecs_task_definition_td_arn" {
#     value = module.ecs-fargate-task-definition.aws_ecs_task_definition_td_arn
# }