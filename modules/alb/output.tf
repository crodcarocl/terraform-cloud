output "alb_environment_url" {
    value = module.alb.lb_dns_name
}

output "target_group_arns" {
    value module.alb.target_group_arns
}