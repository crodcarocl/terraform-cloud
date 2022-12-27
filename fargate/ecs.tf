module "ecs-fargate" {
  source  = "cn-terraform/ecs-fargate/aws"
  version = "2.0.49"
  # insert the 6 required variables here

  # for testing purposes
  enable_s3_logs = false
  #

  name_prefix = "fargate-"

  # Container Settings
  container_image              = "tomcat"
  container_name               = "fargate-tomcat-container"
  container_memory             = 1024
  container_memory_reservation = 1024
  container_cpu                = 256
  port_mappings                = [{ "containerPort": 80, "hostPort": 80, "protocol": "tcp" }]
  desired_count                = 1

  # VPC Settings
  vpc_id              = module.vpc.vpc_id
  public_subnets_ids  = module.vpc.public_subnets
  private_subnets_ids = module.vpc.private_subnets
  assign_public_ip    = false

  # Security Settings
  ecs_service_security_groups = [module.ecs_sg.security_group_id]

  # ALB Settings
  lb_enable_http2 = true
  lb_http_ingress_cidr_blocks = var.sg_config.ingress_cidr_blocks
  lb_http_ports  = { "default_http": {"listener_port": 80, "target_group_port": 80}}
  lb_https_ingress_cidr_blocks = var.sg_config.ingress_cidr_blocks
  lb_https_ports = {"default_http": {"listener_port": 443, "target_group_port": 443}}
  lb_security_groups  = [module.ecs_sg.security_group_id]

  # General Settings
  tags = var.project_config.project_tags
}