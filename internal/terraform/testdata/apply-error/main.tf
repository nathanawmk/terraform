resource "aws_instance" "foo" {
  value = "2"
  tags = {
    yor_trace = "1c8fa27a-1960-4d0e-a4bc-5b7f83ef4bc9"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    yor_trace = "d0f54a00-923e-4622-8b2d-ff2ce6a0ef22"
  }
}
