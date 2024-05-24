module "ec2" {
    source = "D:/terraform/terraform_module_ec2"
    ami_id = var.ami_id
    instance_type = var.instance_type
}