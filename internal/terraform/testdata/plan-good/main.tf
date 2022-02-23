resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "13a4988d-40fe-426d-89be-118249f2e51a"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "6c18222c-3e55-4b98-85b4-5812b4a7aed2"
  }
}
