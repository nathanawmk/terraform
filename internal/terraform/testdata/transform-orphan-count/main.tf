resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "c3531864-8e6c-4b10-bbe1-e66ad1d08f2d"
  }
}
