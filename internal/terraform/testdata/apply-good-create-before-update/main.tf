resource "aws_instance" "bar" {
  foo = "baz"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "a2f9f9f7-77d6-47a3-a3ab-59d3146f00c7"
  }
}
