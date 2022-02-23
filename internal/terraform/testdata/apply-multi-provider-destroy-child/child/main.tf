resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "c0b77b40-d64a-4b18-95b1-66a2f3c50ec7"
  }
}
