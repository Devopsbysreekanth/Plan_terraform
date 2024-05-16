resource "aws_instance" "conditions" {
    count = 8
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "Monogdb" || var.instance_names[count.index] == "Monogdb" ? "t3.micro" : "t2.micro"


    tags = {
        Name = var.instance_names[count.index]
        Environment = "DEV"
        Terraform = "true"
        Project = "roboshop"
        Component = var.instance_names[count.index]
    }
    
}


resource "aws_route53_record" "record" {
    count = 8
    zone_id = var.zone_id
    name = "${var.instance_names[count.index]}.${var.domain}"
    type = "A"
    ttl = 1
    records = [aws_instance.conditions[count.index].private_ip]
}