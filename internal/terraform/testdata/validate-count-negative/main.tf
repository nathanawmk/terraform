resource "aws_instance" "test" {
  count = "-5"
  tags = {
    yor_trace = "fbdb8be1-0b67-4118-b7f8-f0cf08a248a4"
  }
}
