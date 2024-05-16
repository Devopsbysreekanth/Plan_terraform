variable "ami_id" {
    default = "ami-0f3c7d07486cad139"
}

variable "instance_names" {
    type = list
    default = ["Cart", "Catalogue", "User" , "Redis", "RabbitMQ", "Shipping", "Payment", "Web"]
}

variable "zone_id" {
    default = "Z1003307YHLZ8XIIWXDL"
}

variable "domain" {
    default = "devopsbysreekanth"
}

