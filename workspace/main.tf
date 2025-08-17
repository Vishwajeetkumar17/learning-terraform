provider "aws" {
region = "ap-south-1"
}

locals {
env = "${terraform.workspace}"
}

resource "aws_vpc" "one" {
cidr_block = "10.0.0.0/16"
tags = {
Name = "${local.env}-vpc"
}
}

resource "aws_subnet" "two" {
cidr_block = "10.0.0.0/16"
availability_zone = "ap-south-1a"
vpc_id = aws_vpc.one.id
tags = {
Name = "${local.env}-subnet"
}
}

resource "aws_instance" "three" {
subnet_id = aws_subnet.two.id
ami = "ami-06006e8b065b5bd46"
instance_type = "t2.micro"
tags = {
Name = "${local.env}-server"
}
}