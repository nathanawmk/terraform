resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "8bb6f6f5-774f-4b1d-b6cf-390026752d02"
  }
}

resource "aws_instance" "bar" {
  count = "${aws_instance.foo.foo}"
  tags = {
    yor_trace = "c005b9d0-602d-4fa6-ae6a-26673667e6d3"
  }
}
