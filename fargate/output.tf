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

# ECS Outputs

output "aws_ecs_cluster_cluster_name" {
    description = "ECS Cluster name"
    value = module.ecs-fargate.aws_ecs_cluster_cluster_name
}

output "aws_ecs_service_service_name" {
    description = "ECS Service name"
    value = module.ecs-fargate.aws_ecs_service_service_name
}

output "aws_lb_lb_dns_name" {
    description = "ECS LB DNS name"
    value = module.ecs-fargate.aws_lb_lb_dns_name
}