resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "df44565b-94ea-4f85-9642-d4e2aa56c884"
  }
}
