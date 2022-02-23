variable "foo" {}

locals {
  baz = "baz-${var.foo}"
}

provider "aws" {
  foo = "${local.baz}"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "24f56418-5891-4554-bbe7-b0ca9e84562c"
  }
}
