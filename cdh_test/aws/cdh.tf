resource "aws_instance" "master" {
    ami = "ami-088ff0e3bde7b3fdf"
    instance_type = "m5.large"
    key_name = var.key_name

    count = var.server

    tags = {
        Name = var.tag_name
        owner = "brian.law"
        enddate = "07072020"
    }
}