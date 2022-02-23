resource "aws_instance" "foo" {
  id = "baz"
  tags = {
    yor_trace = "5bb9b351-a544-45c0-8811-d73587b29c55"
  }
}
