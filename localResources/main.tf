provider "aws" {
  region = "us-east-1"
}

resource "local_file" "one" {
filename = "abc.txt"
content= "Hai all this file is created by terraform"
}


provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.2.0"
    }
  }
}