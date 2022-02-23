provider "aws" {
  alias = "eu"
}

resource "aws_instance" "foo" {
  provider = "aws.eu"
  tags = {
    yor_trace = "ebb28930-2876-402c-ae0c-3db5c1d668c8"
  }
}
