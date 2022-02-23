variable "value" {
  default = ""
}

resource "aws_instance" "foo" {
  num           = "2"
  compute       = "value"
  compute_value = "${var.value}"
  tags = {
    yor_trace = "c16ccafa-c39f-4c54-b1bd-636a85b2c827"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    yor_trace = "64e5f24a-1ed6-4f8a-9b87-e80064741265"
  }
}
