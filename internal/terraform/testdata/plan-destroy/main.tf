resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "0e2c8363-c8a7-4504-bce7-0da6b8dc4d6d"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "06fb182c-d600-43c9-b1d2-95b853fe6d83"
  }
}
