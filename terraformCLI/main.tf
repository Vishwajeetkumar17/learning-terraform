provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
ami = "ami-0b41f7055516b991a"
instance_type = var.instance_type
tags = {
Name = "vishwajeet-server"
}
}

variable "instance_type" {
}