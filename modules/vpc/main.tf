resource "aws_eip" "nat" {
  count = 1
  vpc = true
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = "${var.environment.env_name}-${var.vpc_config.vpc_name}"
  cidr = var.vpc_config.vpc_cidr

  azs             = var.vpc_config.vpc_azs
  private_subnets = var.vpc_config.vpc_private_subnets
  public_subnets  = var.vpc_config.vpc_private_subnets

  enable_nat_gateway = true
  single_nat_gateway = true
  one_nat_gateway_per_az = false

  reuse_nat_ips       = true                    # <= Skip creation of EIPs for the NAT Gateways
  external_nat_ip_ids = "${aws_eip.nat.*.id}"   # <= IPs specified here as input to the module

  nat_gateway_tags = var.project_config.tags
  tags = var.project_config.tags
}