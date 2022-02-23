variable "foo" {}

provider "aws" {
  foo = "${var.foo}"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "74ac7e46-a01c-433a-8ee9-fd18b823d19c"
  }
}
