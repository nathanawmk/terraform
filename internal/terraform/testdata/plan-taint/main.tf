resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "cadd015d-a2c8-4494-a045-d69aad557001"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "85f2044c-e365-4adb-a7bd-abcfa5a4515e"
  }
}
