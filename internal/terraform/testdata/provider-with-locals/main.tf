provider "aws" {
  region = "${local.foo}"
}

locals {
  foo = "bar"
}

resource "aws_instance" "foo" {
  value = "${local.foo}"
  tags = {
    yor_trace = "1b346ecc-3c47-4147-83d3-82b7284e8d4b"
  }
}
