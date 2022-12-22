module "vpc" {
  source = "./modules/vpc"

  name = var.vpc_config.vpc_name
  cidr = var.vpc_config.vpc_cidr

  azs             = var.vpc_config.vpc_azs
  private_subnets = var.vpc_config.vpc_private_subnets
  public_subnets  = var.vpc_config.vpc_public_subnets

  nat_gateway_tags = var.project_config.project_tags
  tags             = var.project_config.project_tags
}