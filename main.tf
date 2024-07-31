provider "aws" {
  access_key = "AKIAW5IZRWOYXSOWJSNG"
  secret_key = "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"
  region = "us-east-1"

}

resource "aws_vpc" "dep2" {
    cidr_block = "192.168.0.0/16"
    tags = {
      "Name" = "VPC3333"
      
    }
}
