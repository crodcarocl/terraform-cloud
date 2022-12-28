# Security Groups Outputs
output "security_group_id" {
  value = module.ecs_sg.security_group_id
}

# VPC Outputs
output "vpc_id" {
    description = "VPC Id"
    value = module.vpc.vpc_id
}

output "private_subnets" {
    description = "VPC private subnets"
    value = module.vpc.private_subnets
}

output "public_subnets" {
    description = "VPC public subnets"
    value = module.vpc.public_subnets
}

# Data Outputs

output "ecs_tg" {
    description = "Target group type IP"
    value = data.ecs_alb.ecs_tg.arn
}