  variable "name" {
    description = "Autoscaling group name"
    type = string
  }
  
  variable "min_size" {
    description = "Minimum available instances"
    type = number
  }
  
  variable "max_size" {
    description = "Minimum available instances"
    type = number
  }

  variable "vpc_zone_identifier" {
    description = "VPC where AS will run instances"
    type = list(string)
  }

  variable "target_group_arns" {
    description = "TG arn where AS will run instances"
    type = list(string)
  }

  variable "security_groups" {
    description = "SG where AS will run instances"
    type = list(string)
  }

  variable "image_id" {
    description = "Image id for the AGS instances"
    type = string
  }

  variable "instance_type" {
    description = "Instance id for the AGS instances"
    type = string
  }