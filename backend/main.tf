provider "aws" {
region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "vishwajeetprodbcuket0088"
    key    = "prod/terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_instance" "one" {
ami = "ami-06006e8b065b5bd46"
instance_type = "t2.micro"
tags = {
Name = "vishwajeet"
}
}