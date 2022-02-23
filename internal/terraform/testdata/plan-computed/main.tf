resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "b9c51a12-0e1c-4fb0-a3ac-8df361c129aa"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.foo}"
  tags = {
    yor_trace = "9df9edfa-1f2c-4d5d-a766-0b9edecd2010"
  }
}
