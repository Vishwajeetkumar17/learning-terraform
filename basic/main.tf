provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0b41f7055516b991a"
instance_type = "t2.micro"
}