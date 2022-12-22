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