provider "aws" {}

resource "aws_instance" "example" {
  ami           = "ami-088ff0e3bde7b3fdf"
  instance_type = "t2.micro"

  tags = {
      Name = "test"
      
  }
}