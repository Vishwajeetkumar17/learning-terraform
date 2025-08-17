provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
}

terraform import aws_instance.one i-0f4c0d5d3bb6dc758