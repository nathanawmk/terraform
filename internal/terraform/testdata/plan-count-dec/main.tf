resource "aws_instance" "foo" {
  foo = "foo"
  tags = {
    yor_trace = "f6d18073-b4ad-48af-a711-04dbcbebe4cc"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "2e93995d-e705-43dd-8eae-f7a583ba9fa7"
  }
}
