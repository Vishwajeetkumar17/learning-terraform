provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "three" {
ami = "ami-06006e8b065b5bd46"
instance_type = "t2.large"
tags = {
Name = "mumbai-server"
}
}

provider "aws" {
region = "ap-northeast-1"
alias = "tokyo"
}

resource "aws_instance" "four" {
provider = aws.tokyo
ami = "ami-0bcf3ca5a6483feba"
instance_type = "t2.large"
tags = {
Name = "tokyo-server"
}
}