provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
ami = "ami-0b41f7055516b991a"
instance_type = "t2.medium"
tags = {
Name = "vishwajeet-server"
}
}

output "vishwajeet" {
value = [aws_instance.one.public_ip, aws_instance.one.private_ip, aws_instance.one.public_dns, aws_instance.one.private_dns]
}