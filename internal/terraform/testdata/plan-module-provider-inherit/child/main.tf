resource "aws_instance" "foo" {
  from = "child"
  tags = {
    yor_trace = "cdacd4a1-ee87-400e-895c-3393d5932b7e"
  }
}
