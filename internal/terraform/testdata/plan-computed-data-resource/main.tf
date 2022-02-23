resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "f2a51fe6-7339-45ad-b9fa-13244d567c49"
  }
}

data "aws_vpc" "bar" {
  foo = "${aws_instance.foo.foo}"
}
