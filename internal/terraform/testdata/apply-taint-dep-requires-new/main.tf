resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "6e23036f-8369-41f4-a32d-483a0d8352d5"
  }
}

resource "aws_instance" "bar" {
  foo         = "${aws_instance.foo.id}"
  require_new = "yes"
  tags = {
    yor_trace = "27e44164-46ef-4ac6-aadd-1a1eb50fb822"
  }
}
