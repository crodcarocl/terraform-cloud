resource "aws_security_group" "web" {   
  name = "web-sg"
  description = "Allow http and https ingress, allow everything to egress"

  vpc_id = module.vpc.vpc_id
}

resource "aws_security_group_rule" "web_http_in" {
    type = "ingress"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

    security_group_id = aws_security_group.web.id
}

resource "aws_security_group_rule" "web_https_in" {
    type = "ingress"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

    security_group_id = aws_security_group.web.id
}

resource "aws_security_group_rule" "web_egress_in" {
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]

    security_group_id = aws_security_group.web.id
}