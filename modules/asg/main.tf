module "autoscaling" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "6.7.0"
  # insert the 1 required variable here

  name = var.name
  min_size = var.min_size
  max_size = var.max_size

  vpc_zone_identifier = var.vpc_zone_identifier
  target_group_arns = var.target_group_arns
  security_groups = var.security_groups

  image_id           = var.image_id
  instance_type = var.instance_type
}