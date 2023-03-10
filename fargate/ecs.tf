resource "aws_ecs_cluster_capacity_providers" "fargate-cluster-cp" {
  
  cluster_name = aws_ecs_cluster.fargate-cluster.name
  capacity_providers = ["FARGATE"]

  default_capacity_provider_strategy {
    base              = 1
    weight            = 100
    capacity_provider = "FARGATE"
  }
}

resource "aws_ecs_cluster" "fargate-cluster" {

  name = "fargate-cluster"
  tags = var.project_config.project_tags
}

resource "aws_ecs_task_definition" "fargate-cluster-td" {
  
  family                   = "fargate-nginx-task"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = 512
  memory                   = 1024
  container_definitions    = jsonencode([
    {
      name      = "nginx-container"
      image     = "nginx:latest"
      cpu       = 512
      memory    = 1024
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }])
}

resource "aws_ecs_service" "tomcat" {
  name                   = "nginx-service"
  cluster                = aws_ecs_cluster.fargate-cluster.name
  task_definition        = aws_ecs_task_definition.fargate-cluster-td.arn
  enable_execute_command = true
  desired_count          = 1
  launch_type            = "FARGATE"
  #iam_role               = aws_iam_role.foo.arn
  #depends_on             = [aws_iam_role_policy.foo]
  depends_on             = [module.ecs_alb]

  load_balancer {
    target_group_arn = module.ecs_alb.target_group_arns[0]
    container_name   = "nginx-container"
    container_port   = 80
  }

  network_configuration {
    security_groups  = [module.ecs_sg.security_group_id]
    subnets          = module.vpc.private_subnets
    assign_public_ip = false
  }
}