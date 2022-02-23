resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "5c3b2e3a-7b1a-4deb-8cd4-c96163d89f35"
  }
}

data "aws_vpc" "bar" {
  count = 3
  foo   = "${aws_instance.foo.foo}"
}
