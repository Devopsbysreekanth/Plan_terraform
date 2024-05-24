instances = {
    MongoDB-DEV = "t2.micro"
    MySQL-DEV = "t2.micro"
    Redis-DEV = "t2.micro"
    RabbitMQ-DEV = "t2.micro"
    Catalogue-DEV = "t2.micro"
    User-DEV = "t2.micro"
    Cart-DEV = "t2.micro"
    Shipping-DEV = "t2.micro"
    Payment-DEV = "t2.micro"
    Web-DEV = "t2.micro"
}

sg_name = "allow-all-DEV"


#DB servers we need take at least t3.medium but for our testing purpose t2.micro is ok