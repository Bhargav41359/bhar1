provider "aws" {
  access_key = "AKIA5CNHOO"
  secret_key = "UyFYoT0jdJDRXb1eL6H03"
  region = "us-east-1"

}


resource "aws_vpc" "dep1" {
    cidr_block = "192.168.0.0/16"
    tags = {
      "Name" = "VPC1"
      
    }
