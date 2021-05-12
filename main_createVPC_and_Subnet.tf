provider aws {
  region = "us-east-1"
  access_key = "AKIAXYMVMS3J27W7S2MD"
  secret_key = "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"
}
resource "aws_vpc" "dev-vpc" {
    cidr_block="10.0.0.0/16"
    tags = {
     Name = "main"
    }
}
resource "aws_subnet" "public_subnet" {
    vpc_id=aws_vpc.dev-vpc.id
    cidr_block="10.0.1.0/24"
}
