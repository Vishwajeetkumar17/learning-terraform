provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = var.instance_count
ami = "ami-03eb6185d756497f8"
instance_type = var.instance_type
tags = {
Name = "vishwajeet-server"
}
}