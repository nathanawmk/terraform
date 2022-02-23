resource "aws_instance" "foo" {
  num     = "2"
  compute = "list.#"
  tags = {
    yor_trace = "beaafdf1-843c-4ca6-90e7-9dc871b6c1ed"
  }
}

resource "aws_instance" "bar" {
  foo = aws_instance.foo.list.0
  tags = {
    yor_trace = "3c9196f9-c5de-4d6c-9d20-1ad34eac63db"
  }
}
