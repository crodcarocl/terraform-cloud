module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = var.name
  cidr = var.cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  single_nat_gateway = true
  one_nat_gateway_per_az = false

  nat_gateway_tags = var.tags
  tags = var.tags
}