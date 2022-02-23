resource "aws_instance" "foo" {
  foo   = "foo"
  count = 2
  tags = {
    yor_trace = "bbd5bf2e-6db2-46a6-8fda-10af3f59a19c"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "498c9761-f902-42e2-9c3f-8830085c40d7"
  }
}
