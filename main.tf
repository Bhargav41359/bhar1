
provider "aws" {
  access_key = "AKIAW5IZRWOYXSOWJSNG"
  secret_key = "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"
  region = "us-east-1"
}

resource "aws_vpc" "dep1" {
    cidr_block = "192.168.0.0/16"
    tags = {
      "Name" = "BH1"
      
    }
    depends_on = [ aws_vpc.dep3 ]
  
}
resource "aws_vpc" "dep2" {
    cidr_block = "192.169.0.0/16"
    tags = {
      "Name" = "BH2"
      
    }
    depends_on = [ aws_vpc.dep3 ]
  
}
resource "aws_vpc" "dep3" {
    cidr_block = "192.170.0.0/16"
    tags = {
      "Name" = "BH3"
      
    }
