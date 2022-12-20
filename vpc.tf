resource "aws_eip" "nat" {
  count = 2
  vpc = true
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "development-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.2.0/24", "10.0.4.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true
  one_nat_gateway_per_az = false

  create_igw = false

  reuse_nat_ips       = true                    # <= Skip creation of EIPs for the NAT Gateways
  external_nat_ip_ids = "${aws_eip.nat.*.id}"   # <= IPs specified here as input to the module

  nat_gateway_tags = {
    Terraform = "true"
    Environment = "development"
  }

  tags = {
    Terraform = "true"
    Environment = "development"
  }
}