provider "aws" {
  alias = "baz"
}

resource "aws_instance" "baz" {
  provider = "aws.baz"
  tags = {
    yor_trace = "649e8b31-d5eb-462d-b8b0-e4ae7dba6021"
  }
}
