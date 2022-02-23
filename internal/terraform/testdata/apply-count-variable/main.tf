variable "foo" {
  default = "2"
}

resource "aws_instance" "foo" {
  foo   = "foo"
  count = "${var.foo}"
  tags = {
    yor_trace = "a20f1b0a-1b2a-4e55-81a9-d44475d03b28"
  }
}
