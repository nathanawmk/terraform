terraform {
  required_providers {
    your-aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "web" {
  provider = "your-aws"
  tags = {
    yor_trace = "7c4a9f3e-8e30-4aa9-903f-af0db86011ab"
  }
}
