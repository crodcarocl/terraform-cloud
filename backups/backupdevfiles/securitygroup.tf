module "web_sg" {
  source = "../modules/sg"

  name   = var.sg_config.sg_name
  vpc_id = module.vpc.vpc_id

  ingress_rules       = var.sg_config.ingress_rules
  ingress_cidr_blocks = var.sg_config.ingress_cidr_blocks

  egress_rules       = var.sg_config.egress_rules
  egress_cidr_blocks = var.sg_config.egress_cidr_blocks
}