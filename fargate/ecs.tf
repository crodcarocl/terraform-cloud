module "ecs-fargate" {
  source  = "cn-terraform/ecs-fargate/aws"
  version = "2.0.49"
  # insert the 6 required variables here

  name_prefix         = "test"
  vpc_id              = module.vpc.vpc_id
  container_image     = "tomcat"
  container_name      = "test"
  public_subnets_ids  = module.vpc.public_subnets
  private_subnets_ids = module.vpc.private_subnets
}