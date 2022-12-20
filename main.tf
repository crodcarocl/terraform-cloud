resource "aws_instance" "web" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type

  subnet_id = module.vpc.private_subnets[0]
  vpc_security_group_ids = [module.web_sg.security_group_id]

  tags = {
    Name = "ec2-web"
  }
}