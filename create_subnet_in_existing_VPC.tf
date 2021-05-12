provider "aws" {
     region = "us-east-1"
     access_key = "AKIAXYMVMS3J27W7S2MD"
     secret_key = "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"
}


data "aws_vpc" "selected_dataiiii" {
   filter {
     name = "tag:Name"
     values = ["main"]
   }
}

resource "aws_subnet" "private_subnet" {
    vpc_id=data.aws_vpc.selected_dataiiii.id
    cidr_block="10.0.3.0/24"
}
