module "web_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.16.2"

  name   = var.name
  vpc_id = var.vpc.vpc_id

  ingress_rules = var.ingress_rules
  ingress_cidr_blocks = var.ingress_cidr_blocks

  egress_rules = var.egress_rules
  egress_cidr_blocks = var.egress_cidr_blocks
}