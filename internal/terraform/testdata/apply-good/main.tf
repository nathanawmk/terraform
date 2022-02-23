resource "aws_instance" "foo" {
  num = 2
  tags = {
    yor_trace = "b919651d-4700-41b1-81bd-144adc277a24"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "47b2d2ae-ca12-4947-b79c-20885f751861"
  }
}
