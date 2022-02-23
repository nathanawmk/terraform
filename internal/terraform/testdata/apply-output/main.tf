resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "c174c513-1c42-4ceb-9f6f-c61dff6d2d8d"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "0a5f400d-07a9-4edc-b2f1-12de13fe3679"
  }
}

output "foo_num" {
  value = "${aws_instance.foo.num}"
}
