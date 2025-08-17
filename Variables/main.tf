provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = var.instance_count
ami = "ami-0b41f7055516b991a"
instance_type = var.instance_type
}

variable "instance_type" {
description = "*"
type = string
default = "t2.micro"
}

variable "instance_count" {
description = "*"
type = number
default = 5
}