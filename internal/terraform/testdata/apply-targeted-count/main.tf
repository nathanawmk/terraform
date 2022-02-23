resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "d6284bec-b2c4-47c7-a42c-9d5c925e0f3e"
  }
}

resource "aws_instance" "bar" {
  count = 3
  tags = {
    yor_trace = "f7842a6c-5c78-49f1-99c0-1a86ce156da4"
  }
}
