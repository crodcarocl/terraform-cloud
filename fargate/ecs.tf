# module "ecs" {
#   source  = "terraform-aws-modules/ecs/aws"
#   version = "4.1.2"

#   cluster_name = "fargate-cluster"
#   tags = var.project_config.project_tags
# }

# module "ecs-fargate-task-definition" {
#   source  = "cn-terraform/ecs-fargate-task-definition/aws"
#   version = "1.0.30"
#   # insert the 1 required variable here

#   name_prefix     = "fargate-tomcat-task"

#   container_name  = "fargate-tomcat-container"
#   container_image = "https://registry.hub.docker.com/_/tomcat"

#   container_memory = 1024
#   container_memory_reservation = 1024
#   container_cpu = 256

#   port_mappings = [
#     {
#       containerPort = 80
#       hostPort      = 80
#       protocol      = "tcp"
#     }
#   ]

#   tags = var.project_config.project_tags
# }

module "ecs-fargate" {
  source  = "cn-terraform/ecs-fargate/aws"
  version = "2.0.49"
  # insert the 7 required variables here

  # for testing purposes
  enable_s3_logs = false
  # depends_on     = [
  #   module.ecs_alb,
  #   module.ecs-fargate-task-definition
  # ]
  #

  # Container settings:
  container_memory             = 1024
  container_memory_reservation = 1024
  container_cpu                = 256
  container_image              = "https://registry.hub.docker.com/_/tomcat"
  container_name               = "fargate-tomcat-container"

  # Alb settings:
  custom_lb_arn      = module.ecs_alb.lb_arn
  lb_security_groups = [module.ecs_sg.security_group_id]

  # Other settings:
  desired_count               = 1
  ecs_service_security_groups = [module.ecs_sg.security_group_id]

  # Legacy
  # ecs_cluster_name    = module.ecs.cluster_name
  # container_name      = "tomcat-service"
  # ecs_cluster_arn     = module.ecs.cluster_arn

  name_prefix         = "test"

  # Netwrok settings
  vpc_id              = module.vpc.vpc_id
  private_subnets_ids = module.vpc.private_subnets
  public_subnets_ids  = module.vpc.public_subnets
  assign_public_ip    = false

  # task_definition_arn = module.ecs-fargate-task-definition.aws_ecs_task_definition_td_arn
  # security_groups     = [module.ecs_sg.security_group_id]

  tags                = var.project_config.project_tags
}