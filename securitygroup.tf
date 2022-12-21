module "web_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.16.2"
  name = "web_sg"

  vpc_id = module.vpc.vpc_id

  ingress_rules = ["http-80-tcp", "https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]
  egress_cidr_blocks = ["0.0.0.0/0"]
}