<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_autoscaling"></a> [autoscaling](#module\_autoscaling) | ./modules/asg | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |
| <a name="module_web_alb"></a> [web\_alb](#module\_web\_alb) | ./modules/alb | n/a |
| <a name="module_web_sg"></a> [web\_sg](#module\_web\_sg) | ./modules/sg | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_ami.app_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_config"></a> [alb\_config](#input\_alb\_config) | ALB Config variables | <pre>object ({<br>    alb_name            = string<br>    load_balancer_type  = string<br>    alb_listener_port   = number<br>    alb_tagergroup_port = number<br>  })</pre> | n/a | yes |
| <a name="input_asg_config"></a> [asg\_config](#input\_asg\_config) | ASG config variables | <pre>object ({<br>    asg_name      = string<br>    min_size      = number<br>    max_size      = number<br>    instance_type = string<br>  })</pre> | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name | <pre>object ({<br>    env_name  = string<br>    env_short = string<br>  })</pre> | <pre>{<br>  "env_name": "development",<br>  "env_short": "devel"<br>}</pre> | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Type of EC2 instance to provision | `string` | `"t3.nano"` | no |
| <a name="input_project_config"></a> [project\_config](#input\_project\_config) | Custom project configs | <pre>object ({<br>    project_tags = map(string)<br>  })</pre> | <pre>{<br>  "project_tags": {<br>    "Environment": "development",<br>    "createdBy": "crodcarocl",<br>    "projectName": "crodcaro-testing"<br>  }<br>}</pre> | no |
| <a name="input_sg_config"></a> [sg\_config](#input\_sg\_config) | SG config variables | <pre>object ({<br>    sg_name             = string<br>    ingress_rules       = list(string)<br>    ingress_cidr_blocks = list(string)<br>    egress_rules        = list(string)<br>    egress_cidr_blocks  = list(string)<br>  })</pre> | n/a | yes |
| <a name="input_vpc_config"></a> [vpc\_config](#input\_vpc\_config) | VPC Config variables | <pre>object ({<br>    vpc_name            = string<br>    vpc_cidr            = string<br>    vpc_azs             = list(string)<br>    vpc_private_subnets = list(string)<br>    vpc_public_subnets  = list(string)<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_environment_url"></a> [environment\_url](#output\_environment\_url) | n/a |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | n/a |
<!-- END_TF_DOCS -->