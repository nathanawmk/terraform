resource "aws_instance" "foo" {
  count = 0
  foo   = "foo"
  tags = {
    yor_trace = "0da0dfbb-de9b-451a-b680-dbeac37a178a"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.*.foo}"
  tags = {
    yor_trace = "6c658be3-9cba-4311-a902-f398196a217e"
  }
}
