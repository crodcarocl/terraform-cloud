output "environment_url" {
    value = module.web_alb.alb_environment_url
}

output "security_group_id" {
    value = module .web_sg.security_group_id
}