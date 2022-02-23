resource "aws_instance" "foo" {
  num = "2"
  foo = "bar"
  tags = {
    yor_trace = "b2c83529-bd97-4c69-9015-668d5b076cd9"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "a292bbd7-256a-4a98-bc3a-a830f5143a31"
  }
}
