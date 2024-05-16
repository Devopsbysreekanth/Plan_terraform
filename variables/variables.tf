variable "ami_id" {
    default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "sg_name" {
    default = "allow-alls"
}

variable "sg_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "tags" {
    type = map
    default = {
        Name = "Monogdb"
        Environment = "DEV"
        Terraform = "true"
        Project = "roboshop"
        Component = "Monogdb"
    }
}