terraform {
  required_providers {
    my-aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "web" {
  provider = "my-aws"
  tags = {
    yor_trace = "9f1cea13-6ee2-4888-bd0d-9eece61c38c5"
  }
}
