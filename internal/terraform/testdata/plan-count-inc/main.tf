resource "aws_instance" "foo" {
  foo   = "foo"
  count = 3
  tags = {
    yor_trace = "dd3519ac-952a-4a70-a0ec-b6c0878b7dc2"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "999aa67d-18c8-42a7-bb03-3df2b792fb9b"
  }
}
