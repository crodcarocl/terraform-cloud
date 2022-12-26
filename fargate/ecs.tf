module "ecs" {
  source  = "terraform-aws-modules/ecs/aws"
  version = "4.1.2"

  cluster_name = "fargate-cluster"
  tags = var.project_config.project_tags
}

# module "ecs-fargate-task-definition" {
#   source  = "cn-terraform/ecs-fargate-task-definition/aws"
#   version = "1.0.30"
#   # insert the 1 required variable here

#   name_prefix    = "task"
#   container_name = "apache-test"
#   container_image = 
# }

# module "ecs-fargate-service" {
#   source  = "cn-terraform/ecs-fargate-service/aws"
#   version = "2.0.37"
#   # insert the 7 required variables here

#   ecs_cluster_name    = module.ecs.cluster_name
#   container_name      = "tomcat-service"
#   ecs_cluster_arn     = module.ecs.cluster_arn
#   name_prefix         = "test"

#   vpc_id              = module.vpc.vpc_id
#   private_subnets     = module.vpc.private_subnets
#   public_subnets      = module.vpc.public_subnets

#   task_definition_arn = module.ecs-fargate-task-definition.aws_ecs_task_definition_td_arn
# }