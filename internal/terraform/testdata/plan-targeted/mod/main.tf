resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "a53e8c65-0183-4d62-bb49-eadf3dcc77fe"
  }
}
