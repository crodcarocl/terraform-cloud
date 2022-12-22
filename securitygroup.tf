module "web_sg" {
  source = "./modules/sg"

  name   = var.asg_config.sg_name
  vpc_id = module.vpc.vpc_id

  ingress_rules       = var.asg_config.ingress_rules
  ingress_cidr_blocks = var.asg_config.ingress_cidr_blocks

  egress_rules       = var.asg_config.egress_rules
  egress_cidr_blocks = var.asg_config.egress_cidr_blocks
}