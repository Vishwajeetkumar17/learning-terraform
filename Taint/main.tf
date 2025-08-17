provider "aws" {
region = "us-east-1"
}

resource "aws_s3_bucket" "one" {
bucket = "vishwajeet9988tetrrbcuket"
}

resource "aws_ebs_volume" "two" {
size = 20
availability_zone = "us-east-1b"
tags = {
Name = "vishwajeet-ebs"
}
}

resource "aws_iam_user" "three" {
name = "vishwajeet"
}

resource "aws_instance" "four" {
ami = "ami-03eb6185d756497f8"
instance_type = "t2.micro"
tags = {
Name = "vishwajeet-terraserver"
}
}