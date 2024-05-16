resource "aws_instance" "Monogdb" {
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups= [aws_security_group.allow_alls.name]

    tags = var.tags
}