provider "aws" {
  alias = "bar"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "d23f5ad3-ff04-4b54-ac68-d354e36c1705"
  }
}

resource "aws_instance" "bar" {
  foo      = "bar"
  provider = "aws.bar"
  tags = {
    yor_trace = "b2d906b7-f886-4720-a7ea-f9f95e6e533c"
  }
}
